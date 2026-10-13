.class public Lorg/teleal/cling/model/message/header/UDNHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "UDNHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/cling/model/types/UDN;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;)V
    .locals 0
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/UDNHeader;->setValue(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/UDNHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v1, "uuid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UDA header value, must start with \'uuid:\': "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    const-string v1, "::urn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UDA header value, must not contain \'::urn\': "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_1
    new-instance v0, Lorg/teleal/cling/model/types/UDN;

    const-string v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/UDN;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/UDNHeader;->setValue(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
