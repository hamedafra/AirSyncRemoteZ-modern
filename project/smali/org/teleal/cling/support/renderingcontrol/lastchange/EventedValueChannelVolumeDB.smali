.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;
.super Lorg/teleal/cling/support/lastchange/EventedValue;
.source "EventedValueChannelVolumeDB.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValue",
        "<",
        "Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 37
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
    .line 40
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 10
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
    .line 60
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 61
    new-instance v3, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;

    .line 62
    const-string v4, "val"

    .line 63
    new-instance v5, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v5}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 64
    new-instance v6, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-virtual {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getVolumeDB()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-direct {v6, v8, v9}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 63
    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {v3, v4, v0}, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 67
    new-instance v3, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;

    .line 68
    const-string v4, "channel"

    .line 69
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-virtual {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getChannel()Lorg/teleal/cling/support/model/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/Channel;->name()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-direct {v3, v4, v0}, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 60
    return-object v1
.end method

.method protected getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-virtual {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->toString()Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->valueOf([Ljava/util/Map$Entry;)Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf([Ljava/util/Map$Entry;)Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;
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
            "Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "channel":Lorg/teleal/cling/support/model/Channel;
    const/4 v2, 0x0

    .line 47
    .local v2, "volumeDB":Ljava/lang/Integer;
    array-length v5, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 55
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    new-instance v3, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-direct {v3, v1, v2}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;-><init>(Lorg/teleal/cling/support/model/Channel;Ljava/lang/Integer;)V

    :goto_1
    return-object v3

    .line 47
    :cond_0
    aget-object v0, p1, v4

    .line 48
    .local v0, "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "channel"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/teleal/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Channel;

    move-result-object v1

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "val"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    new-instance v6, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v6}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;->getValue()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 47
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 55
    .end local v0    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
