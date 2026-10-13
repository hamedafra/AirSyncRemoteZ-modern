.class public Lorg/teleal/cling/support/model/PortMapping;
.super Ljava/lang/Object;
.source "PortMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/model/PortMapping$Protocol;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private enabled:Z

.field private externalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

.field private internalClient:Ljava/lang/String;

.field private internalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

.field private leaseDurationSeconds:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field private protocol:Lorg/teleal/cling/support/model/PortMapping$Protocol;

.field private remoteHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;)V
    .locals 9
    .param p1, "port"    # I
    .param p2, "internalClient"    # Ljava/lang/String;
    .param p3, "protocol"    # Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .prologue
    const/4 v3, 0x0

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    new-instance v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 68
    new-instance v4, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v4, v6, v7}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 69
    new-instance v5, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, v3

    .line 72
    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/PortMapping;-><init>(ZLorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V
    .locals 9
    .param p1, "port"    # I
    .param p2, "internalClient"    # Ljava/lang/String;
    .param p3, "protocol"    # Lorg/teleal/cling/support/model/PortMapping$Protocol;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    new-instance v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 80
    const/4 v3, 0x0

    .line 81
    new-instance v4, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v4, v6, v7}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 82
    new-instance v5, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 85
    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/PortMapping;-><init>(ZLorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Lorg/teleal/cling/support/model/PortMapping$Protocol;)V
    .locals 9
    .param p1, "remoteHost"    # Ljava/lang/String;
    .param p2, "externalPort"    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
    .param p3, "protocol"    # Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .prologue
    const/4 v5, 0x0

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    new-instance v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v6, v7}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, v5

    .line 98
    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/PortMapping;-><init>(ZLorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<",
            "Lorg/teleal/cling/model/meta/Service;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .line 52
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/teleal/cling/model/action/ActionArgumentValue<Lorg/teleal/cling/model/meta/Service;>;>;"
    const-string v0, "NewEnabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 53
    const-string v0, "NewLeaseDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 54
    const-string v0, "NewRemoteHost"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    const-string v0, "NewExternalPort"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .line 56
    const-string v0, "NewInternalPort"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .line 57
    const-string v0, "NewInternalClient"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 58
    const-string v0, "NewProtocol"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/support/model/PortMapping$Protocol;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/PortMapping$Protocol;

    move-result-object v7

    .line 59
    const-string v0, "NewPortMappingDescription"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/PortMapping;-><init>(ZLorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(ZLorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "leaseDurationSeconds"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p3, "remoteHost"    # Ljava/lang/String;
    .param p4, "externalPort"    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
    .param p5, "internalPort"    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
    .param p6, "internalClient"    # Ljava/lang/String;
    .param p7, "protocol"    # Lorg/teleal/cling/support/model/PortMapping$Protocol;
    .param p8, "description"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean p1, p0, Lorg/teleal/cling/support/model/PortMapping;->enabled:Z

    .line 105
    iput-object p2, p0, Lorg/teleal/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 106
    iput-object p3, p0, Lorg/teleal/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lorg/teleal/cling/support/model/PortMapping;->externalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .line 108
    iput-object p5, p0, Lorg/teleal/cling/support/model/PortMapping;->internalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .line 109
    iput-object p6, p0, Lorg/teleal/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    .line 110
    iput-object p7, p0, Lorg/teleal/cling/support/model/PortMapping;->protocol:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .line 111
    iput-object p8, p0, Lorg/teleal/cling/support/model/PortMapping;->description:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalPort()Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->externalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    return-object v0
.end method

.method public getInternalClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPort()Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->internalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    return-object v0
.end method

.method public getLeaseDurationSeconds()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getProtocol()Lorg/teleal/cling/support/model/PortMapping$Protocol;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->protocol:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoteHost()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/teleal/cling/support/model/PortMapping;->enabled:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "description":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->description:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/teleal/cling/support/model/PortMapping;->enabled:Z

    .line 120
    return-void
.end method

.method public setExternalPort(Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0
    .param p1, "externalPort"    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->externalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .line 148
    return-void
.end method

.method public setInternalClient(Ljava/lang/String;)V
    .locals 0
    .param p1, "internalClient"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setInternalPort(Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0
    .param p1, "internalPort"    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->internalPort:Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .line 156
    return-void
.end method

.method public setLeaseDurationSeconds(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0
    .param p1, "leaseDurationSeconds"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 128
    return-void
.end method

.method public setProtocol(Lorg/teleal/cling/support/model/PortMapping$Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->protocol:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .line 172
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteHost"    # Ljava/lang/String;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "remoteHost":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lorg/teleal/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PortMapping;->getProtocol()Lorg/teleal/cling/support/model/PortMapping$Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PortMapping;->getExternalPort()Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PortMapping;->getInternalClient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
