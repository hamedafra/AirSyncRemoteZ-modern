.class public Lorg/teleal/cling/model/message/header/NTSHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "NTSHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/cling/model/types/NotificationSubtype;",
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

.method public constructor <init>(Lorg/teleal/cling/model/types/NotificationSubtype;)V
    .locals 0
    .param p1, "type"    # Lorg/teleal/cling/model/types/NotificationSubtype;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/NTSHeader;->setValue(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/NTSHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

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
    .line 35
    invoke-static {}, Lorg/teleal/cling/model/types/NotificationSubtype;->values()[Lorg/teleal/cling/model/types/NotificationSubtype;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 41
    :goto_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/NTSHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 42
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid NTS header value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    aget-object v0, v2, v1

    .line 36
    .local v0, "type":Lorg/teleal/cling/model/types/NotificationSubtype;
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/NTSHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "type":Lorg/teleal/cling/model/types/NotificationSubtype;
    :cond_2
    return-void
.end method
