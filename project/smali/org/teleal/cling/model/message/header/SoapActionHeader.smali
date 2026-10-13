.class public Lorg/teleal/cling/model/message/header/SoapActionHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "SoapActionHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/cling/model/types/SoapActionType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->setString(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/types/SoapActionType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/SoapActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->setValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/SoapActionType;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/model/types/SoapActionType;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->setValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/SoapActionType;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/SoapActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid SOAP action header, must be enclosed in doublequotes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid SOAP action header value, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/model/types/SoapActionType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/SoapActionType;

    move-result-object v1

    .line 51
    .local v1, "t":Lorg/teleal/cling/model/types/SoapActionType;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    return-void
.end method
