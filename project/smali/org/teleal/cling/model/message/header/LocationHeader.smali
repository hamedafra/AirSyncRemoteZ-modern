.class public Lorg/teleal/cling/model/message/header/LocationHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "LocationHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/LocationHeader;->setString(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "value"    # Ljava/net/URL;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/LocationHeader;->setValue(Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/LocationHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

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
    .line 45
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/LocationHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
