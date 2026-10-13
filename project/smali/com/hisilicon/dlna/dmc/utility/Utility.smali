.class public Lcom/hisilicon/dlna/dmc/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;
    }
.end annotation


# static fields
.field public static final CACHE_ROOT:Ljava/lang/String;

.field public static final SDCARD_ROOT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final baseHeight:I = 0x500

.field private static final baseWidth:I = 0x2d0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/utility/Utility;->SDCARD_ROOT:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/utility/Utility;->CACHE_ROOT:Ljava/lang/String;

    .line 46
    const-class v0, Lcom/hisilicon/dlna/dmc/utility/Utility;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/utility/Utility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObjectAlbumArtProperty(Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;)V
    .locals 8
    .param p0, "didlobject"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, "uri":Ljava/net/URI;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "arraylist":Ljava/util/ArrayList;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    new-instance v4, Lorg/teleal/cling/support/model/DIDLAttribute;

    const-string v5, "urn:schemas-dlna-org:metadata-1-0/"

    const-string v6, "dlna"

    const-string v7, "PNG_TN"

    invoke-direct {v4, v5, v6, v7}, Lorg/teleal/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-direct {v3, v2, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "arraylist":Ljava/util/ArrayList;
    .end local v2    # "uri":Ljava/net/URI;
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkItemURL(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;
    .locals 6
    .param p0, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    const/4 v3, 0x0

    .line 190
    new-instance v2, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;-><init>(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Z)V

    .line 192
    .local v2, "result":Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 193
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v4, 0xbb8

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 194
    const-string v4, "HEAD"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->setReachable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/hisilicon/dlna/dmc/utility/Utility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check fail, url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkURL(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 204
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 210
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/hisilicon/dlna/dmc/utility/Utility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check fail, url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createDIDL(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 3
    .param p0, "MetaData"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 286
    .local v1, "parser":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 288
    :goto_0
    return-object v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createMetaData(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "item":Lorg/teleal/cling/support/model/item/Item;
    new-instance v6, Lorg/teleal/cling/support/model/Res;

    new-instance v1, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v2, "*:*:*:*"

    invoke-direct {v1, v2}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v6, v1, v2, p2}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    .line 223
    .local v6, "res":Lorg/teleal/cling/support/model/Res;
    sget-object v1, Lcom/hisilicon/dlna/dmc/utility/Utility$1;->$SwitchMap$com$hisilicon$dlna$dmc$processor$model$PlaylistItem$Type:[I

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 239
    :goto_0
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createMetaData(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 226
    :pswitch_0
    new-instance v0, Lorg/teleal/cling/support/model/item/AudioItem;

    .end local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    const-string v1, "0"

    const-string v2, "0"

    const-string v4, ""

    new-array v5, v5, [Lorg/teleal/cling/support/model/Res;

    aput-object v6, v5, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 227
    .restart local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    goto :goto_0

    .line 230
    :pswitch_1
    new-instance v0, Lorg/teleal/cling/support/model/item/VideoItem;

    .end local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    const-string v1, "0"

    const-string v2, "0"

    const-string v4, ""

    new-array v5, v5, [Lorg/teleal/cling/support/model/Res;

    aput-object v6, v5, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 231
    .restart local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    goto :goto_0

    .line 234
    :pswitch_2
    new-instance v0, Lorg/teleal/cling/support/model/item/ImageItem;

    .end local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    const-string v1, "0"

    const-string v2, "0"

    const-string v4, ""

    new-array v5, v5, [Lorg/teleal/cling/support/model/Res;

    aput-object v6, v5, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 235
    .restart local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static createMetaData(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;
    .locals 4
    .param p0, "didlObject"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 263
    if-eqz p0, :cond_2

    .line 264
    new-instance v2, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 265
    .local v2, "ps":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    new-instance v0, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/DIDLContent;-><init>()V

    .line 267
    .local v0, "ct":Lorg/teleal/cling/support/model/DIDLContent;
    instance-of v3, p0, Lorg/teleal/cling/support/model/item/Item;

    if-eqz v3, :cond_1

    .line 268
    check-cast p0, Lorg/teleal/cling/support/model/item/Item;

    .end local p0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLContent;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 274
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 279
    .end local v0    # "ct":Lorg/teleal/cling/support/model/DIDLContent;
    .end local v2    # "ps":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    :goto_1
    return-object v3

    .line 269
    .restart local v0    # "ct":Lorg/teleal/cling/support/model/DIDLContent;
    .restart local v2    # "ps":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    .restart local p0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_1
    instance-of v3, p0, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v3, :cond_0

    .line 270
    check-cast p0, Lorg/teleal/cling/support/model/container/Container;

    .end local p0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLContent;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/DIDLContent;

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_1

    .line 279
    .end local v0    # "ct":Lorg/teleal/cling/support/model/DIDLContent;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ps":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    .restart local p0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public static createVideoMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "thumbUrl"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v6, Lorg/teleal/cling/support/model/Res;

    new-instance v1, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v2, "*:*:*:*"

    invoke-direct {v1, v2}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v6, v1, v2, p1}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    .line 244
    .local v6, "res":Lorg/teleal/cling/support/model/Res;
    new-instance v0, Lorg/teleal/cling/support/model/item/VideoItem;

    const-string v1, "0"

    const-string v2, "0"

    const-string v4, ""

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/teleal/cling/support/model/Res;

    const/4 v3, 0x0

    aput-object v6, v5, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 245
    .local v0, "item":Lorg/teleal/cling/support/model/item/Item;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {v0, p2}, Lcom/hisilicon/dlna/dmc/utility/Utility;->addObjectAlbumArtProperty(Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createMetaData(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static downToast(Landroid/widget/Toast;Landroid/content/Context;I)V
    .locals 1
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 153
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->downToast(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static downToast(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 163
    const v2, 0x1080096

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 167
    const/16 v2, 0x50

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 169
    return-void
.end method

.method public static getBaseHeight()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x500

    return v0
.end method

.method public static getBaseWidth()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x2d0

    return v0
.end method

.method public static getDMRPushName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dmrName"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080053

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDeviceFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080054

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDMSToastName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dmsName"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDeviceFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080026

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceFriendlyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "deviceFriendlyName"    # Ljava/lang/String;

    .prologue
    .line 105
    move-object v0, p0

    .line 106
    .local v0, "friendlyName":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "lastIndex":I
    if-lez v1, :cond_1

    .line 108
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    :cond_0
    if-lez v1, :cond_1

    .line 113
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_1
    return-object v0
.end method

.method public static getImageDimension()I
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getMaxImageDimension()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getMaxImageDimension()I
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenHeight()I

    move-result v0

    .line 84
    .local v0, "height":I
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenWidth()I

    move-result v1

    .line 85
    .local v1, "width":I
    if-le v0, v1, :cond_0

    .end local v0    # "height":I
    :goto_0
    return v0

    .restart local v0    # "height":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getMimeType(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/common/util/MimeType;
    .locals 2
    .param p0, "item"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/item/Item;->getFirstResource()Lorg/teleal/cling/support/model/Res;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/Res;->getProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfo;

    move-result-object v0

    .line 294
    .local v0, "protocolInfo":Lorg/teleal/cling/support/model/ProtocolInfo;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/teleal/common/util/MimeType;

    move-result-object v1

    return-object v1
.end method

.method public static getRawSize(IFLandroid/content/Context;)F
    .locals 2
    .param p0, "unit"    # I
    .param p1, "size"    # F
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 184
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .restart local v0    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public static getScaleWithBaseScreen()F
    .locals 8

    .prologue
    const/high16 v7, 0x44a00000    # 1280.0f

    const/high16 v6, 0x44340000    # 720.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 121
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenHeight()I

    move-result v0

    .line 122
    .local v0, "height":I
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenWidth()I

    move-result v2

    .line 123
    .local v2, "width":I
    if-le v0, v2, :cond_1

    .line 124
    int-to-float v4, v0

    mul-float/2addr v4, v5

    div-float v1, v4, v7

    .line 125
    .local v1, "heightScale":F
    int-to-float v4, v2

    mul-float/2addr v4, v5

    div-float v3, v4, v6

    .line 126
    .local v3, "widthScale":F
    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    move v4, v1

    .line 130
    :goto_0
    return v4

    :cond_0
    move v4, v3

    .line 126
    goto :goto_0

    .line 128
    .end local v1    # "heightScale":F
    .end local v3    # "widthScale":F
    :cond_1
    int-to-float v4, v2

    mul-float/2addr v4, v5

    div-float v1, v4, v7

    .line 129
    .restart local v1    # "heightScale":F
    int-to-float v4, v0

    mul-float/2addr v4, v5

    div-float v3, v4, v6

    .line 130
    .restart local v3    # "widthScale":F
    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0
.end method

.method public static getScreenDensity()F
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 76
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    return v2
.end method

.method public static getScreenHeight()I
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 68
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static getScreenWidth()I
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 60
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public static getSmallImageDimension()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getImageDimension()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 145
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 149
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidthScaleWithBaseScreen(I)F
    .locals 5
    .param p0, "width"    # I

    .prologue
    const/high16 v4, 0x44340000    # 720.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 135
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenHeight()I

    move-result v0

    .line 136
    .local v0, "h":I
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenWidth()I

    move-result v1

    .line 137
    .local v1, "w":I
    if-le v0, v1, :cond_0

    .line 138
    int-to-float v2, p0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    .line 140
    :goto_0
    return v2

    :cond_0
    int-to-float v2, p0

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    goto :goto_0
.end method

.method public static isNetWork(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 371
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 373
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 375
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 376
    const/4 v3, 0x1

    .line 381
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 374
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final readStreamAsByte(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    .line 352
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 353
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 354
    .local v0, "bytes":[B
    const/4 v2, -0x1

    .line 355
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 362
    .end local v0    # "bytes":[B
    .end local v2    # "len":I
    .end local v3    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v4, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 358
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    .restart local v2    # "len":I
    .restart local v3    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 360
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 361
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 364
    .end local v0    # "bytes":[B
    .end local v2    # "len":I
    .end local v3    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 365
    .local v1, "ex":Ljava/lang/Error;
    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v4, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static timeStringToMinute(Ljava/lang/String;)J
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v6, 0x0

    .line 325
    if-nez p0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-wide v6

    .line 327
    :cond_1
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "split":[Ljava/lang/String;
    array-length v8, v1

    if-eq v8, v9, :cond_0

    .line 330
    array-length v8, v1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 332
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    array-length v8, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    .line 338
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 339
    .local v2, "hour":J
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    int-to-long v4, v6

    .line 341
    .local v4, "minite":J
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    goto :goto_0

    .line 342
    .end local v2    # "hour":J
    .end local v4    # "minite":J
    :catch_1
    move-exception v0

    .line 343
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
