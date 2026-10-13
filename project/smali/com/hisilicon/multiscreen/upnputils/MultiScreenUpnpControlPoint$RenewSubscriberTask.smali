.class Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;
.super Ljava/util/TimerTask;
.source "MultiScreenUpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenewSubscriberTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;


# direct methods
.method private constructor <init>(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;->this$0:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .param p2, "x1"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;-><init>(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;->this$0:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->access$000(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)V

    .line 98
    return-void
.end method
