.class public Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;
.super Ljava/lang/Object;
.source "StreamClientConfigurationImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamClientConfiguration;


# instance fields
.field private connectionTimeoutSeconds:I

.field private contentCharset:Ljava/lang/String;

.field private dataReadTimeoutSeconds:I

.field private maxTotalConnections:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x400

    iput v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    .line 31
    iput v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->connectionTimeoutSeconds:I

    .line 32
    iput v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->dataReadTimeoutSeconds:I

    .line 33
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getConnectionTimeoutSeconds()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->connectionTimeoutSeconds:I

    return v0
.end method

.method public getContentCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getDataReadTimeoutSeconds()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->dataReadTimeoutSeconds:I

    return v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    return v0
.end method

.method public getRequestRetryCount()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, -0x1

    return v0
.end method

.method public getSocketBufferSize()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x1

    return v0
.end method

.method public getStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public getUserAgentValue(II)Ljava/lang/String;
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .prologue
    .line 82
    new-instance v0, Lorg/teleal/cling/model/ServerClientTokens;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/ServerClientTokens;-><init>(II)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/ServerClientTokens;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectionTimeoutSeconds(I)V
    .locals 0
    .param p1, "connectionTimeoutSeconds"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->connectionTimeoutSeconds:I

    .line 55
    return-void
.end method

.method public setContentCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentCharset"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDataReadTimeoutSeconds(I)V
    .locals 0
    .param p1, "dataReadTimeoutSeconds"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->dataReadTimeoutSeconds:I

    .line 65
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 0
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 43
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    .line 44
    return-void
.end method
