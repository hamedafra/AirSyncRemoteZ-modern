.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;
.super Ljava/lang/Object;
.source "DMSBrowseActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$2;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method

.method public onRouterDisabledEvent()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onRouterEnabledEvent()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onRouterError(Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method public onStartComplete()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method public onStartFailed()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
