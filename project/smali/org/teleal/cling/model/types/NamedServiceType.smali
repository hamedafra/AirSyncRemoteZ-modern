.class public Lorg/teleal/cling/model/types/NamedServiceType;
.super Ljava/lang/Object;
.source "NamedServiceType.java"


# instance fields
.field private serviceType:Lorg/teleal/cling/model/types/ServiceType;

.field private udn:Lorg/teleal/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/ServiceType;)V
    .locals 0
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/teleal/cling/model/types/NamedServiceType;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 33
    iput-object p2, p0, Lorg/teleal/cling/model/types/NamedServiceType;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/NamedServiceType;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 45
    const-string v4, "::"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "strings":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 47
    new-instance v4, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t parse UDN::ServiceType from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Lorg/teleal/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 57
    .local v3, "udn":Lorg/teleal/cling/model/types/UDN;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lorg/teleal/cling/model/types/ServiceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v1

    .line 58
    .local v1, "serviceType":Lorg/teleal/cling/model/types/ServiceType;
    new-instance v4, Lorg/teleal/cling/model/types/NamedServiceType;

    invoke-direct {v4, v3, v1}, Lorg/teleal/cling/model/types/NamedServiceType;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/ServiceType;)V

    return-object v4

    .line 53
    .end local v1    # "serviceType":Lorg/teleal/cling/model/types/ServiceType;
    .end local v3    # "udn":Lorg/teleal/cling/model/types/UDN;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t parse UDN: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lorg/teleal/cling/model/types/NamedServiceType;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/teleal/cling/model/types/NamedServiceType;

    .line 73
    .local v0, "that":Lorg/teleal/cling/model/types/NamedServiceType;
    iget-object v3, p0, Lorg/teleal/cling/model/types/NamedServiceType;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    iget-object v4, v0, Lorg/teleal/cling/model/types/NamedServiceType;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/types/ServiceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 74
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/types/NamedServiceType;->udn:Lorg/teleal/cling/model/types/UDN;

    iget-object v4, v0, Lorg/teleal/cling/model/types/NamedServiceType;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getServiceType()Lorg/teleal/cling/model/types/ServiceType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/teleal/cling/model/types/NamedServiceType;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    return-object v0
.end method

.method public getUdn()Lorg/teleal/cling/model/types/UDN;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/teleal/cling/model/types/NamedServiceType;->udn:Lorg/teleal/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lorg/teleal/cling/model/types/NamedServiceType;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->hashCode()I

    move-result v0

    .line 82
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/types/NamedServiceType;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/ServiceType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 83
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NamedServiceType;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NamedServiceType;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
