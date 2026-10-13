.class public Lorg/teleal/cling/support/model/item/VideoBroadcast;
.super Lorg/teleal/cling/support/model/item/VideoItem;
.source "VideoBroadcast.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.videoBroadcast"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>()V

    .line 35
    sget-object v0, Lorg/teleal/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 36
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
    .line 47
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 48
    sget-object v0, Lorg/teleal/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 49
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 43
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/VideoBroadcast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getChannelNr()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcon()Ljava/net/URI;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setChannelNr(Ljava/lang/Integer;)Lorg/teleal/cling/support/model/item/VideoBroadcast;
    .locals 1
    .param p1, "channelNr"    # Ljava/lang/Integer;

    .prologue
    .line 74
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 75
    return-object p0
.end method

.method public setIcon(Ljava/net/URI;)Lorg/teleal/cling/support/model/item/VideoBroadcast;
    .locals 1
    .param p1, "icon"    # Ljava/net/URI;

    .prologue
    .line 56
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 57
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/VideoBroadcast;
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 66
    return-object p0
.end method
