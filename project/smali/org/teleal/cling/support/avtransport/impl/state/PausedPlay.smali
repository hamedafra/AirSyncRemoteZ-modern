.class public abstract Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;
.super Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;
.source "PausedPlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/teleal/cling/support/model/AVTransport;",
        ">",
        "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/AVTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;, "Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay<TT;>;"
    .local p1, "transport":Lorg/teleal/cling/support/model/AVTransport;, "TT;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;-><init>(Lorg/teleal/cling/support/model/AVTransport;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCurrentTransportActions()[Lorg/teleal/cling/support/model/TransportAction;
    .locals 3

    .prologue
    .line 61
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;, "Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/teleal/cling/support/model/TransportAction;

    const/4 v1, 0x0

    .line 62
    sget-object v2, Lorg/teleal/cling/support/model/TransportAction;->Stop:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 63
    sget-object v2, Lorg/teleal/cling/support/model/TransportAction;->Play:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v2, v0, v1

    .line 61
    return-object v0
.end method

.method public onEntry()V
    .locals 6

    .prologue
    .line 41
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;, "Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay<TT;>;"
    sget-object v0, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->log:Ljava/util/logging/Logger;

    const-string v1, "Setting transport state to PAUSED_PLAYBACK"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/teleal/cling/support/model/TransportInfo;

    .line 44
    sget-object v2, Lorg/teleal/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/AVTransport;->getTransportInfo()Lorg/teleal/cling/support/model/TransportInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/TransportInfo;->getCurrentTransportStatus()Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/AVTransport;->getTransportInfo()Lorg/teleal/cling/support/model/TransportInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/TransportInfo;->getCurrentSpeed()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/support/model/TransportInfo;-><init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/AVTransport;->setTransportInfo(Lorg/teleal/cling/support/model/TransportInfo;)V

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/AVTransport;->getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/AVTransport;->getInstanceId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/teleal/cling/support/lastchange/EventedValue;

    const/4 v3, 0x0

    .line 51
    new-instance v4, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    sget-object v5, Lorg/teleal/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

    invoke-direct {v4, v5}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;-><init>(Lorg/teleal/cling/support/model/TransportState;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 52
    new-instance v4, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;

    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/state/PausedPlay;->getCurrentTransportActions()[Lorg/teleal/cling/support/model/TransportAction;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;-><init>([Lorg/teleal/cling/support/model/TransportAction;)V

    aput-object v4, v2, v3

    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/support/lastchange/LastChange;->setEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;[Lorg/teleal/cling/support/lastchange/EventedValue;)V

    .line 54
    return-void
.end method

.method public abstract play(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setTransportURI(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stop()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end method
