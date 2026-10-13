.class public Lorg/teleal/cling/model/meta/DeviceIdentity;
.super Ljava/lang/Object;
.source "DeviceIdentity.java"


# instance fields
.field private final maxAgeSeconds:Ljava/lang/Integer;

.field private final udn:Lorg/teleal/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;)V
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 40
    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "maxAgeSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 45
    iput-object p2, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/DeviceIdentity;)V
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "template"    # Lorg/teleal/cling/model/meta/DeviceIdentity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 35
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 61
    check-cast v0, Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 63
    .local v0, "that":Lorg/teleal/cling/model/meta/DeviceIdentity;
    iget-object v3, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    iget-object v4, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUdn()Lorg/teleal/cling/model/types/UDN;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
