.class public Lorg/teleal/cling/model/message/header/HostHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "HostHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/cling/model/types/HostPort;",
        ">;"
    }
.end annotation


# instance fields
.field group:Ljava/lang/String;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 28
    const/16 v0, 0x76c

    iput v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    .line 29
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 32
    new-instance v0, Lorg/teleal/cling/model/types/HostPort;

    iget-object v1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    iget v2, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 28
    const/16 v0, 0x76c

    iput v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    .line 29
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 36
    new-instance v0, Lorg/teleal/cling/model/types/HostPort;

    iget-object v1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 28
    const/16 v0, 0x76c

    iput v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    .line 29
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 40
    new-instance v0, Lorg/teleal/cling/model/types/HostPort;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/HostHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/HostPort;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/HostPort;->toString()Ljava/lang/String;

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
    .line 45
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    .line 49
    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 50
    new-instance v1, Lorg/teleal/cling/model/types/HostPort;

    iget-object v2, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    iget v3, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid HOST header value, can\'t parse port: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    .line 56
    new-instance v1, Lorg/teleal/cling/model/types/HostPort;

    iget-object v2, p0, Lorg/teleal/cling/model/message/header/HostHeader;->group:Ljava/lang/String;

    iget v3, p0, Lorg/teleal/cling/model/message/header/HostHeader;->port:I

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/HostHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
