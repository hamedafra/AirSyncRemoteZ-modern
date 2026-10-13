.class Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;
.super Ljava/lang/Object;
.source "Picture_New_View.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileDataLoad"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    return-void
.end method
