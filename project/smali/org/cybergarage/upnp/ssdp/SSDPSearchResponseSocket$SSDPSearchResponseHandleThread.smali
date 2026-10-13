.class Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;
.super Ljava/lang/Thread;
.source "SSDPSearchResponseSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSDPSearchResponseHandleThread"
.end annotation


# instance fields
.field mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1
    .param p2, "point"    # Lorg/cybergarage/upnp/ControlPoint;
    .param p3, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->this$0:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 142
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 144
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 148
    iput-object p2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 149
    iput-object p3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->mCtrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->mPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->searchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 156
    return-void
.end method
