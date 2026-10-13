.class Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;
.super Ljava/lang/Object;
.source "RemoteTouchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dX1:F

.field private dX2:F

.field private dY1:F

.field private keyboard_height:I

.field private keyboard_width:I

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKeyboardXY()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$500(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_width:I

    .line 274
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$500(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_height:I

    .line 275
    return-void
.end method

.method private isCloseDown()Z
    .locals 4

    .prologue
    .line 254
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$400(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->getKeyboardXY()V

    .line 257
    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_width:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v0, v2

    .line 258
    .local v0, "closeX":F
    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_height:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x7

    int-to-float v1, v2

    .line 259
    .local v1, "closeY":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyboard_width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",keyboard_height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", closeY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",x1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x1:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",y1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->y1:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 262
    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x1:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x1:F

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->keyboard_width:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x0

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->y1:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->y1:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->disableAirMouse()V

    .line 265
    const/4 v2, 0x1

    .line 268
    .end local v0    # "closeX":F
    .end local v1    # "closeY":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private matchCloseGesture()V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x2:F

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->dX2:F

    .line 239
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->dX2:F

    const/high16 v1, -0x3cea0000    # -150.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$200(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->dX2:F

    const/high16 v1, 0x43160000    # 150.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$300(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 186
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x1:F

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->y1:F

    .line 191
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->isCloseDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->down()V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->up()V

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x2:F

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->y2:F

    .line 217
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->matchCloseGesture()V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->x2:F

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->y2:F

    .line 226
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;->matchCloseGesture()V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
