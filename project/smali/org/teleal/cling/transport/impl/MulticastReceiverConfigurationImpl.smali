.class public Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;
.super Ljava/lang/Object;
.source "MulticastReceiverConfigurationImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/MulticastReceiverConfiguration;


# instance fields
.field private group:Ljava/net/InetAddress;

.field private maxDatagramBytes:I

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0x280

    invoke-direct {p0, v0, p2, v1}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "maxDatagramBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 46
    const/16 v0, 0x280

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 0
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "maxDatagramBytes"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->group:Ljava/net/InetAddress;

    .line 38
    iput p2, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->port:I

    .line 39
    iput p3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->maxDatagramBytes:I

    .line 40
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->group:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMaxDatagramBytes()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->maxDatagramBytes:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->port:I

    return v0
.end method

.method public setGroup(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "group"    # Ljava/net/InetAddress;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->group:Ljava/net/InetAddress;

    .line 66
    return-void
.end method

.method public setMaxDatagramBytes(I)V
    .locals 0
    .param p1, "maxDatagramBytes"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->maxDatagramBytes:I

    .line 82
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->port:I

    .line 74
    return-void
.end method
