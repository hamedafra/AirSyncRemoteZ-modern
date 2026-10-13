.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;
.super Ljava/lang/Object;
.source "FileData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$CreatImageItemsThread;
    }
.end annotation


# static fields
.field private static final SCAN_OK:I = 0x1

.field public static mGruopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private HOST:Ljava/lang/String;

.field private IP:Ljava/net/InetAddress;

.field private final PORT:Ljava/lang/String;

.field private adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

.field private imageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadComplete:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;

.field private myHandler:Landroid/os/Handler;

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .param p3, "mLoadComplete"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->pictures:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->imageItems:Ljava/util/List;

    .line 37
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->myHandler:Landroid/os/Handler;

    .line 43
    const-string v1, "38523"

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->PORT:Ljava/lang/String;

    .line 70
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->IP:Ljava/net/InetAddress;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http:/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->IP:Ljava/net/InetAddress;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "38523"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->HOST:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mLoadComplete:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->pictures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mLoadComplete:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->imageItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;)Lorg/teleal/cling/support/model/item/ImageItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->createImageItem(Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;)Lorg/teleal/cling/support/model/item/ImageItem;

    move-result-object v0

    return-object v0
.end method

.method private createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 4
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 217
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>(Ljava/lang/Object;)V

    .line 219
    .local v1, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setId(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setTitle(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V

    .line 225
    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v0

    .line 226
    .local v0, "isLocal":Z
    if-eqz v0, :cond_0

    .line 227
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    .line 231
    :goto_0
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createMetaData(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setMetaData(Ljava/lang/String;)V

    .line 233
    return-object v1

    .line 229
    :cond_0
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0
.end method

.method private createImageItem(Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;)Lorg/teleal/cling/support/model/item/ImageItem;
    .locals 12
    .param p1, "node"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getId()J

    move-result-wide v8

    .line 208
    .local v8, "pic_id":J
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "item_id":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "link":Ljava/lang/String;
    new-instance v10, Lorg/teleal/cling/support/model/Res;

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v10, v0, v1, v7}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    .line 213
    .local v10, "res":Lorg/teleal/cling/support/model/Res;
    new-instance v0, Lorg/teleal/cling/support/model/item/ImageItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unkonwn"

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/teleal/cling/support/model/Res;

    const/4 v11, 0x0

    aput-object v10, v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    return-object v0
.end method

.method private createImageItem(Ljava/lang/String;I)Lorg/teleal/cling/support/model/item/ImageItem;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "decodeUrl":Ljava/lang/String;
    new-instance v2, Lorg/teleal/cling/support/model/item/ImageItem;

    invoke-direct {v2}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>()V

    .line 186
    .local v2, "item":Lorg/teleal/cling/support/model/item/ImageItem;
    invoke-virtual {v2, p1}, Lorg/teleal/cling/support/model/item/ImageItem;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 187
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/teleal/cling/support/model/item/ImageItem;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v4, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    new-instance v3, Lorg/teleal/cling/support/model/Res;

    invoke-direct {v3}, Lorg/teleal/cling/support/model/Res;-><init>()V

    .line 190
    .local v3, "res":Lorg/teleal/cling/support/model/Res;
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_0
    :try_start_0
    const-string v5, "utf-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    invoke-virtual {v3, v0}, Lorg/teleal/cling/support/model/Res;->setValue(Ljava/lang/String;)V

    .line 201
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v2, v4}, Lorg/teleal/cling/support/model/item/ImageItem;->setResources(Ljava/util/List;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 203
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getLocalIpAddress()Ljava/net/InetAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 238
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 239
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 240
    .local v0, "ipAddress":I
    const-string v3, "%d.%d.%d.%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    and-int/lit16 v6, v0, 0xff

    .line 241
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 240
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getData()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method public getFolders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->pictures:Ljava/util/List;

    return-object v0
.end method
