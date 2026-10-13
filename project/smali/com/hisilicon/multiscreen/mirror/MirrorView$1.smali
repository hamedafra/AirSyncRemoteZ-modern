.class Lcom/hisilicon/multiscreen/mirror/MirrorView$1;
.super Ljava/lang/Object;
.source "MirrorView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/mirror/MirrorView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 175
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 179
    const-string v0, "surfaceCreated start"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iput-object p1, v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 181
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 182
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->access$000(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V

    .line 184
    const-string v0, "surfaceCreated end"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 189
    const-string v0, "surfaceDestroyed start"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->access$100(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V

    .line 192
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 193
    const-string v0, "surfaceDestroyed end"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 194
    return-void
.end method
