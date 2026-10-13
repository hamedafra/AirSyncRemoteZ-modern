.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DMSDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field rc_device_ll:Landroid/widget/LinearLayout;

.field rc_device_name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;)V

    return-void
.end method
