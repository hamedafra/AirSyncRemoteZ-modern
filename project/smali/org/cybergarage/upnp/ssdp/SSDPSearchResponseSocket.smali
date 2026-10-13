.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPUSocket;
.source "SSDPSearchResponseSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;
    }
.end annotation


# instance fields
.field private controlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field private deviceSearchResponseThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 64
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 35
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 64
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 41
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "req"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    .prologue
    .line 132
    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "res"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;

    .prologue
    .line 123
    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 70
    .local v2, "thisThread":Ljava/lang/Thread;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 72
    .local v0, "ctrlPoint":Lorg/cybergarage/upnp/ControlPoint;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    if-ne v3, v2, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 74
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v1

    .line 75
    .local v1, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-nez v1, :cond_2

    .line 85
    .end local v1    # "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_1
    return-void

    .line 77
    .restart local v1    # "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_2
    if-eqz v0, :cond_0

    .line 80
    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;

    invoke-direct {v3, p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;-><init>(Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket$SSDPSearchResponseHandleThread;->start()V

    goto :goto_0
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .param p1, "ctrlp"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 53
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Cyber.SSDPSearchResponseSocket/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "name":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v2

    .line 93
    .local v2, "s":Ljava/net/DatagramSocket;
    const/4 v0, 0x0

    .line 95
    .local v0, "localAddr":Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 106
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->close()Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 115
    return-void
.end method
