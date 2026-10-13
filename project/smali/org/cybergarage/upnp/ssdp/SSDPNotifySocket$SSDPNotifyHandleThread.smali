.class Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;
.super Ljava/lang/Thread;
.source "SSDPNotifySocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSDPNotifyHandleThread"
.end annotation


# instance fields
.field mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1
    .param p2, "point"    # Lorg/cybergarage/upnp/ControlPoint;
    .param p3, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->this$0:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 176
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 178
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 182
    iput-object p2, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 183
    iput-object p3, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 184
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket$SSDPNotifyHandleThread;->mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->notifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 190
    return-void
.end method
