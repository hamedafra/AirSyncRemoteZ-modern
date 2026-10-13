.class public Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;
.super Ljava/lang/Object;
.source "StreamClientConfigurationImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamClientConfiguration;


# instance fields
.field private connectionTimeoutSeconds:I

.field private dataReadTimeoutSeconds:I

.field private usePersistentConnections:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    .line 31
    iput v1, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->connectionTimeoutSeconds:I

    .line 32
    iput v1, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->dataReadTimeoutSeconds:I

    .line 28
    return-void
.end method


# virtual methods
.method public getConnectionTimeoutSeconds()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->connectionTimeoutSeconds:I

    return v0
.end method

.method public getDataReadTimeoutSeconds()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->dataReadTimeoutSeconds:I

    return v0
.end method

.method public getUserAgentValue(II)Ljava/lang/String;
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .prologue
    .line 71
    new-instance v0, Lorg/teleal/cling/model/ServerClientTokens;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/ServerClientTokens;-><init>(II)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/ServerClientTokens;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsePersistentConnections()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    return v0
.end method

.method public setConnectionTimeoutSeconds(I)V
    .locals 0
    .param p1, "connectionTimeoutSeconds"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->connectionTimeoutSeconds:I

    .line 54
    return-void
.end method

.method public setDataReadTimeoutSeconds(I)V
    .locals 0
    .param p1, "dataReadTimeoutSeconds"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->dataReadTimeoutSeconds:I

    .line 65
    return-void
.end method

.method public setUsePersistentConnections(Z)V
    .locals 0
    .param p1, "usePersistentConnections"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    .line 43
    return-void
.end method
