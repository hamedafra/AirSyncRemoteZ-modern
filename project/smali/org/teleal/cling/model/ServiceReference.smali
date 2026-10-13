.class public Lorg/teleal/cling/model/ServiceReference;
.super Ljava/lang/Object;
.source "ServiceReference.java"


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private final serviceId:Lorg/teleal/cling/model/types/ServiceId;

.field private final udn:Lorg/teleal/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 48
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/teleal/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 49
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/teleal/cling/model/types/ServiceId;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object v3, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 52
    iput-object v3, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/ServiceId;)V
    .locals 0
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 58
    iput-object p2, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 72
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

    .line 74
    check-cast v0, Lorg/teleal/cling/model/ServiceReference;

    .line 76
    .local v0, "that":Lorg/teleal/cling/model/ServiceReference;
    iget-object v3, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    iget-object v4, v0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/types/ServiceId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 77
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    iget-object v4, v0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getServiceId()Lorg/teleal/cling/model/types/ServiceId;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    return-object v0
.end method

.method public getUdn()Lorg/teleal/cling/model/types/UDN;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->hashCode()I

    move-result v0

    .line 85
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/ServiceId;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 86
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/ServiceReference;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/ServiceReference;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/ServiceId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
