.class public Lorg/teleal/cling/support/model/TransportInfo;
.super Ljava/lang/Object;
.source "TransportInfo.java"


# instance fields
.field private currentSpeed:Ljava/lang/String;

.field private currentTransportState:Lorg/teleal/cling/support/model/TransportState;

.field private currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 30
    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 31
    const-string v0, "1"

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .line 38
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/teleal/cling/model/action/ActionArgumentValue;>;"
    const-string v0, "CurrentTransportState"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/TransportState;->valueOrCustomOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;

    move-result-object v1

    .line 39
    const-string v0, "CurrentTransportStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/TransportStatus;->valueOrCustomOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v2

    .line 40
    const-string v0, "CurrentSpeed"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lorg/teleal/cling/support/model/TransportInfo;-><init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;)V
    .locals 1
    .param p1, "currentTransportState"    # Lorg/teleal/cling/support/model/TransportState;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 30
    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 31
    const-string v0, "1"

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentTransportState"    # Lorg/teleal/cling/support/model/TransportState;
    .param p2, "currentSpeed"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 30
    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 31
    const-string v0, "1"

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 50
    iput-object p2, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;)V
    .locals 1
    .param p1, "currentTransportState"    # Lorg/teleal/cling/support/model/TransportState;
    .param p2, "currentTransportStatus"    # Lorg/teleal/cling/support/model/TransportStatus;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 30
    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 31
    const-string v0, "1"

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 55
    iput-object p2, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentTransportState"    # Lorg/teleal/cling/support/model/TransportState;
    .param p2, "currentTransportStatus"    # Lorg/teleal/cling/support/model/TransportStatus;
    .param p3, "currentSpeed"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 30
    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 31
    const-string v0, "1"

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    .line 60
    iput-object p2, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    .line 61
    iput-object p3, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getCurrentSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTransportState()Lorg/teleal/cling/support/model/TransportState;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportState:Lorg/teleal/cling/support/model/TransportState;

    return-object v0
.end method

.method public getCurrentTransportStatus()Lorg/teleal/cling/support/model/TransportStatus;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/teleal/cling/support/model/TransportStatus;

    return-object v0
.end method
