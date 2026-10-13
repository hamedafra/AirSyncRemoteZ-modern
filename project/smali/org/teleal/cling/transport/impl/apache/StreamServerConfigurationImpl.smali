.class public Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;
.super Ljava/lang/Object;
.source "StreamServerConfigurationImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamServerConfiguration;


# instance fields
.field private bufferSizeKilobytes:I

.field private dataWaitTimeoutSeconds:I

.field private listenPort:I

.field private staleConnectionCheck:Z

.field private tcpConnectionBacklog:I

.field private tcpNoDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    .line 33
    iput-boolean v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    .line 34
    iput-boolean v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    .line 35
    iput v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "listenPort"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    .line 33
    iput-boolean v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    .line 34
    iput-boolean v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    .line 35
    iput v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 44
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 45
    return-void
.end method


# virtual methods
.method public getBufferSizeKilobytes()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    return v0
.end method

.method public getDataWaitTimeoutSeconds()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    return v0
.end method

.method public getListenPort()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    return v0
.end method

.method public getTcpConnectionBacklog()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    return v0
.end method

.method public isStaleConnectionCheck()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    return v0
.end method

.method public setBufferSizeKilobytes(I)V
    .locals 0
    .param p1, "bufferSizeKilobytes"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    .line 77
    return-void
.end method

.method public setDataWaitTimeoutSeconds(I)V
    .locals 0
    .param p1, "dataWaitTimeoutSeconds"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    .line 65
    return-void
.end method

.method public setListenPort(I)V
    .locals 0
    .param p1, "listenPort"    # I

    .prologue
    .line 52
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 53
    return-void
.end method

.method public setStaleConnectionCheck(Z)V
    .locals 0
    .param p1, "staleConnectionCheck"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    .line 91
    return-void
.end method

.method public setTcpConnectionBacklog(I)V
    .locals 0
    .param p1, "tcpConnectionBacklog"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 115
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    .line 102
    return-void
.end method
