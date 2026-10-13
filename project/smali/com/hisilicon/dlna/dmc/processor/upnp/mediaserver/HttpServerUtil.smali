.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;
.super Ljava/lang/Object;
.source "HttpServerUtil.java"


# static fields
.field public static HOST:Ljava/lang/String; = null

.field public static final LOOP:Ljava/lang/String; = "127.0.0.1"

.field public static PORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "127.0.0.1"

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->HOST:Ljava/lang/String;

    .line 29
    const v0, 0x967b

    sput v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinkWithId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->HOST:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->PORT:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public static getHostAddressFrom(Ljava/net/NetworkInterface;)Ljava/lang/String;
    .locals 4
    .param p0, "ni"    # Ljava/net/NetworkInterface;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const-string v2, "127.0.0.1"

    .line 48
    :goto_0
    return-object v2

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    .local v1, "inets":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 44
    .local v0, "inet":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 48
    .end local v0    # "inet":Ljava/net/InetAddress;
    :cond_2
    const-string v2, "127.0.0.1"

    goto :goto_0
.end method

.method public static getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;
    .locals 2
    .param p0, "didlObject"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "reses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/Res;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAllImages(Ljava/lang/String;)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 146
    const v1, 0x7f070001

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAllMusics(Ljava/lang/String;)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 160
    const v1, 0x7f070002

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAllVideos(Ljava/lang/String;)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 153
    const v1, 0x7f070003

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x1

    .line 156
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCamera(Ljava/lang/String;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 167
    const v0, 0x7f08001d

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 113
    const v3, 0x7f070004

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "images":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 115
    .local v0, "image":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const/4 v2, 0x1

    .line 118
    .end local v0    # "image":Ljava/lang/String;
    :cond_0
    return v2

    .line 114
    .restart local v0    # "image":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isLiveTV(Ljava/lang/String;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "LiveTV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusic(Ljava/lang/String;)Z
    .locals 6
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 131
    const v3, 0x7f070005

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "musics":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 133
    .local v0, "music":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const/4 v2, 0x1

    .line 136
    .end local v0    # "music":Ljava/lang/String;
    :cond_0
    return v2

    .line 132
    .restart local v0    # "music":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isRemoteMultiRoom(Lorg/teleal/cling/model/meta/Device;)Z
    .locals 2
    .param p0, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 102
    instance-of v0, p0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HiMultiRoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z
    .locals 3
    .param p0, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 76
    instance-of v1, p0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_0

    .line 78
    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDevice;

    .end local p0    # "device":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    .line 80
    .local v0, "descriptorURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getSTBIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 85
    .end local v0    # "descriptorURL":Ljava/net/URL;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSTBMultiRoom(Lorg/teleal/cling/model/meta/Device;)Z
    .locals 3
    .param p0, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 89
    instance-of v1, p0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 91
    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    .line 93
    .local v0, "descriptorURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getSTBIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiMultiRoom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x1

    .line 98
    .end local v0    # "descriptorURL":Ljava/net/URL;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 6
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 122
    const v3, 0x7f070006

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "videos":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 124
    .local v0, "video":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const/4 v2, 0x1

    .line 127
    .end local v0    # "video":Ljava/lang/String;
    :cond_0
    return v2

    .line 123
    .restart local v0    # "video":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static loopHost()Z
    .locals 2

    .prologue
    .line 186
    const-string v0, "127.0.0.1"

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makeMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 64
    :cond_0
    move-object v1, p0

    .line 65
    .local v1, "uriPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_1
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static mediaFromLocal(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->loopHost()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->uriFromLoop(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->uriFromLocal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mediaFromLocal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 176
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0
.end method

.method public static queryAudioThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 225
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 226
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "album_art"

    aput-object v5, v0, v4

    .line 230
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "_id=?"

    .line 231
    .local v1, "selection":Ljava/lang/String;
    invoke-static {v3, v0, v1, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "str":[Ljava/lang/String;
    return-object v2
.end method

.method public static queryImageThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 203
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 204
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v0, v4

    .line 208
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "image_id=?"

    .line 209
    .local v1, "selection":Ljava/lang/String;
    invoke-static {v3, v0, v1, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "str":[Ljava/lang/String;
    return-object v2
.end method

.method public static queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 236
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 237
    .local v9, "thumbCursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 238
    .local v8, "str":[Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    aget-object v0, p1, v10

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 242
    .local v7, "columnId":I
    aget-object v0, p1, v11

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 243
    .local v6, "columnData":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v10

    .line 244
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    .line 246
    .end local v6    # "columnData":I
    .end local v7    # "columnId":I
    :cond_0
    if-eqz v9, :cond_1

    .line 247
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    return-object v8
.end method

.method public static queryVideoThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 214
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 215
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v0, v4

    .line 219
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "video_id=?"

    .line 220
    .local v1, "selection":Ljava/lang/String;
    invoke-static {v3, v0, v1, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "str":[Ljava/lang/String;
    return-object v2
.end method

.method public static updateHostAddress(Ljava/net/NetworkInterface;)V
    .locals 1
    .param p0, "ni"    # Ljava/net/NetworkInterface;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getHostAddressFrom(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->HOST:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private static uriFromLocal(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 194
    if-eqz p0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->HOST:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->PORT:I

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static uriFromLoop(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    const-string v0, "127.0.0.1"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->PORT:I

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
