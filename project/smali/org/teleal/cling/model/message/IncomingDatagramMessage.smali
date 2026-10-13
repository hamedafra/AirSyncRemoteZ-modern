.class public Lorg/teleal/cling/model/message/IncomingDatagramMessage;
.super Lorg/teleal/cling/model/message/UpnpMessage;
.source "IncomingDatagramMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/teleal/cling/model/message/UpnpOperation;",
        ">",
        "Lorg/teleal/cling/model/message/UpnpMessage",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private localAddress:Ljava/net/InetAddress;

.field private sourceAddress:Ljava/net/InetAddress;

.field private sourcePort:I


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/message/IncomingDatagramMessage",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<TO;>;"
    .local p1, "source":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<TO;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 54
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getSourceAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->sourceAddress:Ljava/net/InetAddress;

    .line 55
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getSourcePort()I

    move-result v0

    iput v0, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->sourcePort:I

    .line 56
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->localAddress:Ljava/net/InetAddress;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 0
    .param p2, "sourceAddress"    # Ljava/net/InetAddress;
    .param p3, "sourcePort"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/net/InetAddress;",
            "I",
            "Ljava/net/InetAddress;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<TO;>;"
    .local p1, "operation":Lorg/teleal/cling/model/message/UpnpOperation;, "TO;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 47
    iput-object p2, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->sourceAddress:Ljava/net/InetAddress;

    .line 48
    iput p3, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->sourcePort:I

    .line 49
    iput-object p4, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->localAddress:Ljava/net/InetAddress;

    .line 50
    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->sourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSourcePort()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<TO;>;"
    iget v0, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->sourcePort:I

    return v0
.end method
