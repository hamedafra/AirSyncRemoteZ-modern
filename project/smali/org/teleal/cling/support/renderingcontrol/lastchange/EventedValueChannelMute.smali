.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;
.super Lorg/teleal/cling/support/lastchange/EventedValue;
.source "EventedValueChannelMute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValue",
        "<",
        "Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 58
    new-instance v3, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;

    .line 59
    const-string v4, "val"

    .line 60
    new-instance v5, Lorg/teleal/cling/model/types/BooleanDatatype;

    invoke-direct {v5}, Lorg/teleal/cling/model/types/BooleanDatatype;-><init>()V

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-virtual {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->getMute()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/teleal/cling/model/types/BooleanDatatype;->getString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {v3, v4, v0}, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 62
    new-instance v3, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;

    .line 63
    const-string v4, "channel"

    .line 64
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-virtual {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->getChannel()Lorg/teleal/cling/support/model/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/Channel;->name()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-direct {v3, v4, v0}, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 57
    return-object v1
.end method

.method protected getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-virtual {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->valueOf([Ljava/util/Map$Entry;)Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf([Ljava/util/Map$Entry;)Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;
    .locals 7
    .param p1, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "channel":Lorg/teleal/cling/support/model/Channel;
    const/4 v2, 0x0

    .line 46
    .local v2, "mute":Ljava/lang/Boolean;
    array-length v5, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 52
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    new-instance v3, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-direct {v3, v1, v2}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;-><init>(Lorg/teleal/cling/support/model/Channel;Ljava/lang/Boolean;)V

    :goto_1
    return-object v3

    .line 46
    :cond_0
    aget-object v0, p1, v4

    .line 47
    .local v0, "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "channel"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/teleal/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Channel;

    move-result-object v1

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "val"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    new-instance v6, Lorg/teleal/cling/model/types/BooleanDatatype;

    invoke-direct {v6}, Lorg/teleal/cling/model/types/BooleanDatatype;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lorg/teleal/cling/model/types/BooleanDatatype;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 46
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 52
    .end local v0    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
