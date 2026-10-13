.class public Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
.super Ljava/lang/Object;
.source "AccessUpnpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;,
        Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;,
        Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;,
        Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;
    }
.end annotation


# static fields
.field private static final ACCESS_PING_THREAD_NAME:Ljava/lang/String; = "AccessPingThread"

.field private static final DEFAULT_PING_TIME:I = 0xbb8

.field private static final JOIN_THREAD_KEEP_ALIVE_TIMEOUT:I = 0x7d0

.field private static final JOIN_THREAD_PING_TIMEOUT:I = 0x5dc

.field private static final JOIN_THREAD_REACCESS_TIMEOUT:I = 0x7d0

.field private static final KEEP_ALIVE_PERIOD:I = 0x7d0

.field private static final KEEP_ALIVE_THREAD_NAME:Ljava/lang/String; = "AccessKeepAliveThread"

.field private static final MAX_PING_FAIL_COUNT:I = 0xf

.field private static final PING_FAIL_COUNT_OF_REACCESS:I = 0x5

.field private static final PING_FAIL_COUNT_OF_WARNING:I = 0x5

.field private static final PING_PERIOD:I = 0x5dc

.field private static final PING_REMOTE_ID_CAN_ACCESS:I = 0x0

.field private static final PING_REMOTE_ID_MANUAL_OFF:I = -0x2

.field private static final PING_REMOTE_ID_OTHERS:I = -0x1

.field private static final PING_REMOTE_ID_SUSPEND:I = -0x3

.field private static final PING_TIME_OUT:I = 0x7530

.field private static final REACCESS_PERIOD:I = 0x7d0

.field private static final REACCESS_THREAD_NAME:Ljava/lang/String; = "ReAccessThread"

.field private static final TIMEOUT_PING_CONNECT:I = 0x2710

.field private static final TIMEOUT_PING_READ:I = 0x1388

.field private static final TIMEOUT_REACCESS:I = 0x1388


# instance fields
.field private mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

.field private mAccessPingThread:Ljava/lang/Thread;

.field private mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

.field private mIsKeepAliveRunning:Z

.field private mIsPingRunning:Z

.field private mIsReAccessRunning:Z

.field private mKeepAliveThread:Ljava/lang/Thread;

.field private mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field private mPingFailCount:I

.field private mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

.field private mReAccessThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 138
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 143
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 148
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    .line 153
    iput v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    .line 158
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    .line 163
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    .line 168
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 173
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    .line 178
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    .line 183
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    .line 519
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 520
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 521
    new-instance v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;-><init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    .line 523
    return-void
.end method

.method private ThreadSleep(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1141
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->renewState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealReaved(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealNetworkNotWell()V

    return-void
.end method

.method static synthetic access$1700(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealNetworkLost(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    return v0
.end method

.method static synthetic access$202(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->accessPing(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)I
    .locals 2
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->ThreadSleep(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->isKeepAliveStateOK()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->reAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->setKeepAliveStateOK()V

    return-void
.end method

.method private accessPing(Ljava/lang/String;)I
    .locals 9
    .param p1, "RemoteID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 914
    const/16 v3, 0x7530

    .line 915
    .local v3, "timeCost":I
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v6, "urn:schemas-upnp-org:service:AccessControlServer:1"

    const-string v7, "Ping"

    .line 916
    invoke-virtual {v5, v6, v7}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    .line 918
    .local v1, "pingAct":Lorg/cybergarage/upnp/Action;
    if-nez v1, :cond_0

    .line 920
    const-string v5, "Action not found"

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move v4, v3

    .line 973
    .end local v3    # "timeCost":I
    .local v4, "timeCost":I
    :goto_0
    return v4

    .line 924
    .end local v4    # "timeCost":I
    .restart local v3    # "timeCost":I
    :cond_0
    const-string v5, "RemoteID"

    invoke-virtual {v1, v5, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v5, "PingTime"

    iget-object v6, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    invoke-virtual {v6}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->getStartTime()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 927
    const/16 v5, 0x2710

    const/16 v6, 0x1388

    invoke-virtual {v1, v5, v6}, Lorg/cybergarage/upnp/Action;->postControlAction(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 929
    const-string v5, "Post ping action fail"

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    :goto_1
    move v4, v3

    .line 973
    .end local v3    # "timeCost":I
    .restart local v4    # "timeCost":I
    goto :goto_0

    .line 933
    .end local v4    # "timeCost":I
    .restart local v3    # "timeCost":I
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Action;->getOutputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v0

    .line 934
    .local v0, "outArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "remoteIdSTB":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 937
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    .line 938
    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->getStartTime()I

    move-result v5

    const/4 v6, 0x1

    .line 939
    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_1

    .line 941
    :cond_2
    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 944
    const-string v5, "remote_id of STB is can_access."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 945
    const/4 v3, 0x0

    goto :goto_1

    .line 947
    :cond_3
    const-string v5, "REMOTE_ID_STB_MANUAL_OFF"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 949
    const-string v5, "STB is manual off."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 950
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v6, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v5, v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 951
    iput-boolean v8, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 952
    sget-object v5, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v5}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 953
    const/4 v3, -0x2

    goto :goto_1

    .line 955
    :cond_4
    const-string v5, "0.0.0.1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 957
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v6, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v5, v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 958
    iput-boolean v8, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 959
    sget-object v5, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v5}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 960
    const/4 v3, -0x3

    goto :goto_1

    .line 965
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Be reaved by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v8}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 966
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v6, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v5, v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 967
    iput-boolean v8, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 968
    sget-object v5, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v5}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->dealReaved(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 969
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method private checkHello(Ljava/lang/String;Lorg/cybergarage/upnp/ArgumentList;)Z
    .locals 5
    .param p1, "remoteID"    # Ljava/lang/String;
    .param p2, "outArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 732
    const/4 v2, 0x0

    .line 733
    .local v2, "isOK":Z
    if-nez p2, :cond_1

    .line 735
    const-string v3, "outArgList of Hello action is null."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 751
    :cond_0
    :goto_0
    return v2

    .line 739
    :cond_1
    const-string v3, "CurrentRemoteID"

    .line 740
    invoke-virtual {p2, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 741
    .local v0, "argRemoteID":Lorg/cybergarage/upnp/Argument;
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "currentID":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 746
    const/4 v2, 0x1

    .line 748
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access hello return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dealNetworkLost(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 1129
    const-string v0, "Access listener is null, cannot deal event: NetWorkLost."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealNetWorkLostEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0
.end method

.method private dealNetworkNotWell()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 1113
    const-string v0, "Access listener is null, cannot deal event: NetWorkNotWell."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-interface {v0}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealNetWorkNotWellEvent()V

    goto :goto_0
.end method

.method private dealReaved(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 1066
    const-string v0, "Access listener is null, cannot deal event: Reaved."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1072
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0
.end method

.method private dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 1082
    const-string v0, "Access listener is null, cannot deal event: STBLeave."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0
.end method

.method private dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 1098
    const-string v0, "Access listener is null, cannot deal event: STBSuspend."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0
.end method

.method private initHello(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 4
    .param p1, "remoteID"    # Ljava/lang/String;
    .param p2, "localIP"    # Ljava/lang/String;

    .prologue
    .line 673
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 675
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:AccessControlServer:1"

    const-string v3, "Hello"

    .line 676
    invoke-virtual {v1, v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 678
    .local v0, "helloAct":Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 680
    const-string v1, "RemoteID"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v1, "RemoteIP"

    invoke-virtual {v0, v1, p2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "Version"

    const-string v2, "3.0.1.0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v1, "DeviceInfo"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v1, "SDKVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handset info\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdk version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access hello input remote id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access hello input remote IP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 700
    :cond_0
    :goto_0
    return-object v0

    .line 697
    .end local v0    # "helloAct":Lorg/cybergarage/upnp/Action;
    :cond_1
    const-string v1, "remoteID or localIP is null and hello action initialize failed."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x0

    .restart local v0    # "helloAct":Lorg/cybergarage/upnp/Action;
    goto :goto_0
.end method

.method private isKeepAliveStateOK()Z
    .locals 4

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "isOK":Z
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->getLatestPingTimeCost()I

    move-result v1

    .line 1038
    .local v1, "tempPingTimeCost":I
    if-lez v1, :cond_0

    const/16 v2, 0x7530

    if-lt v1, v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 1042
    :cond_1
    const/4 v0, 0x1

    .line 1049
    :goto_0
    return v0

    .line 1046
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reAccess(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "remoteID"    # Ljava/lang/String;
    .param p2, "timeoutConnect"    # I
    .param p3, "timeoutRead"    # I

    .prologue
    const/4 v4, 0x0

    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "isOK":Z
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getLastestIP()Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "localIP":Ljava/lang/String;
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 990
    .local v0, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_0

    .line 992
    const-string v5, "Current device is null, fail to reAccessSTB."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1021
    :goto_0
    return v4

    .line 997
    :cond_0
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 998
    invoke-virtual {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->getDeviceByUUID(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 999
    .local v3, "newDevice":Lorg/cybergarage/upnp/Device;
    if-nez v3, :cond_1

    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReAccess device is not exist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReAccess device name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1007
    iget-object v4, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V

    .line 1009
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->accessHello(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    .line 1010
    if-eqz v1, :cond_2

    .line 1012
    const-string v4, "ReAccess successfully."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    :goto_1
    move v4, v1

    .line 1021
    goto :goto_0

    .line 1018
    :cond_2
    const-string v4, "Fail to reAccess."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private renewState()Z
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->renewState()Z

    move-result v0

    return v0
.end method

.method private sendHello(Lorg/cybergarage/upnp/Action;II)Lorg/cybergarage/upnp/ArgumentList;
    .locals 3
    .param p1, "helloAct"    # Lorg/cybergarage/upnp/Action;
    .param p2, "timeoutConnect"    # I
    .param p3, "timeoutRead"    # I

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "outArgList":Lorg/cybergarage/upnp/ArgumentList;
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/cybergarage/upnp/Action;->postControlAction(II)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 715
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getOutputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    .line 719
    :cond_0
    const-string v1, "Send Hello action fail."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setKeepAliveStateOK()V
    .locals 2

    .prologue
    .line 1054
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingFailCount:I

    .line 1055
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->setPingTimeCost(I)V

    .line 1056
    return-void
.end method

.method private setSupportHME(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 4
    .param p1, "outArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 784
    .local v1, "isSupportHME":I
    if-eqz p1, :cond_0

    .line 786
    const-string v2, "SupportHME"

    .line 787
    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 788
    .local v0, "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_1

    .line 790
    const-string v2, "Hello action does not return the type of hme supported in server."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    .line 798
    .end local v0    # "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set the type of hme supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSupportHME(Z)V

    .line 800
    return-void

    .line 794
    .restart local v0    # "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v1

    goto :goto_0

    .line 799
    .end local v0    # "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setVideoType(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 4
    .param p1, "outArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 760
    const-string v1, "h264"

    .line 762
    .local v1, "videoType":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 764
    const-string v2, "SupportVideo"

    .line 765
    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 766
    .local v0, "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_1

    .line 768
    const-string v2, "Hello action does not return the type of video supported in server."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    .line 776
    .end local v0    # "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set the type of video supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSupportVideoType(Ljava/lang/String;)V

    .line 778
    return-void

    .line 772
    .restart local v0    # "ArgVideoType":Lorg/cybergarage/upnp/Argument;
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private startKeepAlive()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 848
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    .line 849
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;

    invoke-direct {v1, p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;-><init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    .line 850
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    const-string v1, "AccessKeepAliveThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 852
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 853
    return-void
.end method

.method private startPing()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 815
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 816
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->startup()V

    .line 817
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;

    invoke-direct {v1, p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;-><init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    .line 818
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    const-string v1, "AccessPingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 820
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 821
    return-void
.end method

.method private startReAccessThread()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 880
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    .line 881
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;

    invoke-direct {v1, p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;-><init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    .line 882
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    const-string v1, "ReAccessThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 884
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 885
    return-void
.end method

.method private stopAccessPingTask()V
    .locals 1

    .prologue
    .line 807
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopAccessPingTask(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 808
    return-void
.end method

.method private stopKeepAlive()V
    .locals 4

    .prologue
    .line 860
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    .line 861
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mKeepAliveThread:Ljava/lang/Thread;

    .line 873
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopPing()V
    .locals 4

    .prologue
    .line 828
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 829
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessPingThread:Ljava/lang/Thread;

    .line 841
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopReAccessThread()V
    .locals 4

    .prologue
    .line 892
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    .line 893
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mReAccessThread:Ljava/lang/Thread;

    .line 905
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public accessByebye()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v3, "urn:schemas-upnp-org:service:AccessControlServer:1"

    const-string v4, "Byebye"

    .line 585
    invoke-virtual {v2, v3, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 587
    .local v0, "byebyeAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_1

    .line 589
    const-string v2, "Action not found"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 598
    :cond_0
    :goto_0
    return v1

    .line 592
    :cond_1
    const-string v2, "RemoteID"

    iget-object v3, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 593
    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getRemoteId()Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public accessHello(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "remoteID"    # Ljava/lang/String;
    .param p2, "localIP"    # Ljava/lang/String;
    .param p3, "timeoutConnect"    # I
    .param p4, "timeoutRead"    # I

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, "isSuccess":Z
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->initHello(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 560
    .local v0, "helloAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_1

    .line 562
    const-string v3, "Init Hello action failed!"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 575
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->sendHello(Lorg/cybergarage/upnp/Action;II)Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 567
    .local v2, "outArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-direct {p0, p1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->checkHello(Ljava/lang/String;Lorg/cybergarage/upnp/ArgumentList;)Z

    move-result v1

    .line 568
    if-eqz v1, :cond_0

    .line 570
    invoke-direct {p0, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->setVideoType(Lorg/cybergarage/upnp/ArgumentList;)V

    .line 571
    invoke-direct {p0, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->setSupportHME(Lorg/cybergarage/upnp/ArgumentList;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 531
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 532
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;-><init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mPingTime:Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    .line 536
    :cond_0
    return-void
.end method

.method public setListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V
    .locals 0
    .param p1, "accessMsgListener"    # Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 545
    return-void
.end method

.method public startAccessPingTask()V
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopAccessPingTask()V

    .line 609
    const-string v0, "restart AccessPingTask"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->startPing()V

    .line 613
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->startReAccessThread()V

    .line 614
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->startKeepAlive()V

    .line 615
    return-void
.end method

.method public stopAccessPingTask(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsPingRunning:Z

    .line 624
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsReAccessRunning:Z

    .line 625
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->mIsKeepAliveRunning:Z

    .line 627
    if-nez p1, :cond_0

    .line 629
    sget-object p1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 630
    const-string v0, "Caller of IAccessListener is null, you should check it."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 633
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$1;->$SwitchMap$com$hisilicon$multiscreen$controller$IAccessListener$Caller:[I

    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 656
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopPing()V

    .line 657
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopReAccessThread()V

    .line 658
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopKeepAlive()V

    .line 662
    :goto_0
    return-void

    .line 637
    :pswitch_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopReAccessThread()V

    .line 638
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopKeepAlive()V

    goto :goto_0

    .line 643
    :pswitch_1
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopPing()V

    .line 644
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopKeepAlive()V

    goto :goto_0

    .line 649
    :pswitch_2
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopPing()V

    .line 650
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopReAccessThread()V

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
