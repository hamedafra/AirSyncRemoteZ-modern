.class public Lorg/teleal/cling/model/message/header/UDAServiceTypeHeader;
.super Lorg/teleal/cling/model/message/header/ServiceTypeHeader;
.source "UDAServiceTypeHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;-><init>(Ljava/net/URI;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDAServiceType;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/model/types/UDAServiceType;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;-><init>(Lorg/teleal/cling/model/types/ServiceType;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/model/types/UDAServiceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDAServiceType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/UDAServiceTypeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UDA service type header value, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
