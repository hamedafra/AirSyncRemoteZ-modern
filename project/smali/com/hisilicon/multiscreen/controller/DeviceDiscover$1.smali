.class Lcom/hisilicon/multiscreen/controller/DeviceDiscover$1;
.super Ljava/lang/Object;
.source "DeviceDiscover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/multiscreen/controller/DeviceDiscover;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/controller/DeviceDiscover;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$1;->this$0:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$1;->this$0:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->access$000(Lcom/hisilicon/multiscreen/controller/DeviceDiscover;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->startControl()V

    .line 48
    return-void
.end method
