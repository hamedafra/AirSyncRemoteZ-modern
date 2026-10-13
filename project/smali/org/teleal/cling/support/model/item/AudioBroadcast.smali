.class public Lorg/teleal/cling/support/model/item/AudioBroadcast;
.super Lorg/teleal/cling/support/model/item/AudioItem;
.source "AudioBroadcast.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.audioBroadcast"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>()V

    .line 32
    sget-object v0, Lorg/teleal/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 33
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 41
    sget-object v0, Lorg/teleal/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getChannelNr()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getRadioBand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRadioCallSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRadioStationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setChannelNr(Ljava/lang/Integer;)Lorg/teleal/cling/support/model/item/AudioBroadcast;
    .locals 1
    .param p1, "channelNr"    # Ljava/lang/Integer;

    .prologue
    .line 85
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 86
    return-object p0
.end method

.method public setRadioBand(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioBroadcast;
    .locals 1
    .param p1, "radioBand"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 77
    return-object p0
.end method

.method public setRadioCallSign(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioBroadcast;
    .locals 1
    .param p1, "radioCallSign"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 59
    return-object p0
.end method

.method public setRadioStationID(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioBroadcast;
    .locals 1
    .param p1, "radioStationID"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 68
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioBroadcast;
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 50
    return-object p0
.end method
