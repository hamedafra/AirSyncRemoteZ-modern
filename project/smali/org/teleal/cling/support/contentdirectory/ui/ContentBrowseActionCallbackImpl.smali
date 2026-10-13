.class public Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;
.super Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.source "ContentBrowseActionCallbackImpl.java"


# static fields
.field public static final FAILED:I = 0x3ea

.field public static final SUCCESS:I = 0x3e9

.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lorg/teleal/cling/support/model/container/Container;

.field private handler:Landroid/os/Handler;

.field private list:Ljava/util/List;

.field private service:Lorg/teleal/cling/model/meta/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/container/Container;Ljava/util/List;Landroid/os/Handler;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p4, "list"    # Ljava/util/List;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-virtual/range {p3 .. p3}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    const-string v7, "*"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    new-array v11, v2, [Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v2, 0x0

    new-instance v3, Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v4, 0x1

    const-string v12, "dc:title"

    invoke-direct {v3, v4, v12}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    aput-object v3, v11, v2

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v3 .. v11}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    .line 38
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->activity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->service:Lorg/teleal/cling/model/meta/Service;

    .line 40
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->container:Lorg/teleal/cling/support/model/container/Container;

    .line 41
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->list:Ljava/util/List;

    .line 42
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->handler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$2(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->service:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method static synthetic access$3(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 82
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v0, Landroid/os/Message;->what:I

    .line 83
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failure why ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "s1":Ljava/lang/String;
    const-string v2, "content brwwser action call back"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
    .locals 3
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "didl"    # Lorg/teleal/cling/support/model/DIDLContent;

    .prologue
    .line 48
    sget-object v1, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Received browse action DIDL descriptor, creating tree nodes"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->activity:Landroid/app/Activity;

    new-instance v2, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 71
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 72
    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method

.method public updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0
    .param p1, "status"    # Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    .prologue
    .line 77
    return-void
.end method
