.class public Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;
.super Ljava/lang/Object;
.source "StreamServerConfigurationImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamServerConfiguration;


# instance fields
.field private listenPort:I

.field private tcpConnectionBacklog:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "listenPort"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->listenPort:I

    .line 40
    return-void
.end method


# virtual methods
.method public getListenPort()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->listenPort:I

    return v0
.end method

.method public getTcpConnectionBacklog()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    return v0
.end method

.method public setListenPort(I)V
    .locals 0
    .param p1, "listenPort"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->listenPort:I

    .line 48
    return-void
.end method

.method public setTcpConnectionBacklog(I)V
    .locals 0
    .param p1, "tcpConnectionBacklog"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 60
    return-void
.end method
