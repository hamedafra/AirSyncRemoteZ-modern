.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;
.super Ljava/lang/Object;
.source "ContentTree.java"


# static fields
.field public static final ALL_AUDIO_ID:Ljava/lang/String; = "5"

.field public static final ALL_IMAGE_ID:Ljava/lang/String; = "6"

.field public static final ALL_VIDEO_ID:Ljava/lang/String; = "4"

.field public static final AUDIO_FOLDER_ID:Ljava/lang/String; = "8"

.field public static final AUDIO_FOLDER_PREFIX:Ljava/lang/String; = "audio_folder_"

.field public static final AUDIO_ID:Ljava/lang/String; = "2"

.field public static final IMAGE_FOLDER_ID:Ljava/lang/String; = "9"

.field public static final IMAGE_FOLDER_PREFIX:Ljava/lang/String; = "image_folder_"

.field public static final IMAGE_ID:Ljava/lang/String; = "3"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "10"

.field public static final ROOT_ID:Ljava/lang/String; = "0"

.field public static final VIDEO_FOLDER_ID:Ljava/lang/String; = "7"

.field public static final VIDEO_FOLDER_PREFIX:Ljava/lang/String; = "video_folder_"

.field public static final VIDEO_ID:Ljava/lang/String; = "1"

.field private static audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;",
            ">;"
        }
    .end annotation
.end field

.field private static contentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile isStopLoading:Z

.field private static photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static rootNode:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

.field private static videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    .line 62
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createRootNode()Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->rootNode:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->photos:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->videos:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->audios:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAudioRootContainer(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 3
    .param p0, "container"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 240
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrCreateMusicFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 241
    .local v1, "audiosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 242
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 244
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllMusicLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 245
    .local v0, "allAudiosFolderContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 246
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 247
    return-void
.end method

.method private static addImageRootContainer(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 3
    .param p0, "container"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 125
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrCreateImageFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 126
    .local v1, "imagesContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 127
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 129
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllImageLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 130
    .local v0, "allImagesFolderContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 131
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 132
    return-void
.end method

.method private static addNewAudioFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 937
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v2, "8"

    .line 938
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageFolder"

    invoke-direct {v5, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 939
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 940
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 941
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 942
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    invoke-direct {v1, p0, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 944
    const-string v1, "8"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v7

    .line 945
    .local v7, "audioContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v7, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 946
    invoke-virtual {v7}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 948
    return-object v0
.end method

.method private static addNewImageFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 783
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v2, "9"

    .line 784
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageFolder"

    invoke-direct {v5, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 785
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 786
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 787
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 788
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    invoke-direct {v1, p0, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 790
    const-string v1, "9"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v7

    .line 791
    .local v7, "imageContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v7, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 792
    invoke-virtual {v7}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 794
    return-object v0
.end method

.method private static addNewVideoFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 828
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v2, "7"

    .line 829
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageFolder"

    invoke-direct {v5, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 830
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 831
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 832
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 833
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    invoke-direct {v1, p0, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 835
    const-string v1, "7"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v7

    .line 836
    .local v7, "videoContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v7, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 837
    invoke-virtual {v7}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 839
    return-object v0
.end method

.method public static addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "node"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    .prologue
    .line 297
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method private static addObjectAlbumArtProperty(Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;)V
    .locals 8
    .param p0, "didlobject"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 975
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 976
    .local v2, "uri":Ljava/net/URI;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v0, "arraylist":Ljava/util/ArrayList;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    new-instance v4, Lorg/teleal/cling/support/model/DIDLAttribute;

    const-string v5, "urn:schemas-dlna-org:metadata-1-0/"

    const-string v6, "dlna"

    const-string v7, "PNG_TN"

    invoke-direct {v4, v5, v6, v7}, Lorg/teleal/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-direct {v3, v2, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v0    # "arraylist":Ljava/util/ArrayList;
    .end local v2    # "uri":Ljava/net/URI;
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addRootContainer(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V
    .locals 5
    .param p0, "rootNode"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    .prologue
    .line 97
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createImagesRootContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 98
    .local v1, "imagesContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 99
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 101
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideosRootContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 102
    .local v2, "videosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 103
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 105
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudiosRootContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 106
    .local v0, "audiosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 107
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 108
    return-void
.end method

.method private static addVideoRootContainer(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 3
    .param p0, "container"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 184
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrCreateVideoFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 185
    .local v1, "videosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 186
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 188
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllVideoLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 189
    .local v0, "allVideosFolderContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 190
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 191
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createRootNode()Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->rootNode:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    .line 73
    return-void
.end method

.method public static createAllAudioDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V
    .locals 1
    .param p0, "localAudio"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;

    .prologue
    .line 952
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrAddNewAllAudioFolderContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 954
    .local v0, "allAudiosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudio(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V

    .line 955
    return-void
.end method

.method private static createAllImageLevelContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 158
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v1, "6"

    const-string v2, "3"

    const v3, 0x7f080016

    .line 159
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 161
    .local v0, "allPhotosContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 162
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 163
    const-string v1, "6"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "6"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 164
    return-object v0
.end method

.method private static createAllMusicLevelContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 273
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v1, "5"

    const-string v2, "2"

    const v3, 0x7f080017

    .line 274
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 276
    .local v0, "allAudioContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 277
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 278
    const-string v1, "5"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "5"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 279
    return-object v0
.end method

.method public static createAllPhotoDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V
    .locals 1
    .param p0, "localPhoto"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;

    .prologue
    .line 724
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrAddNewAllImageFolderContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 726
    .local v0, "allPhotosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhoto(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V

    .line 727
    return-void
.end method

.method public static createAllVideoDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V
    .locals 1
    .param p0, "localVideo"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;

    .prologue
    .line 843
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrAddNewAllVideoFolderContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 845
    .local v0, "allVideosContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideo(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V

    .line 846
    return-void
.end method

.method private static createAllVideoLevelContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 217
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v1, "4"

    const-string v2, "1"

    const v3, 0x7f080018

    .line 218
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 219
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 220
    .local v0, "allVideosContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 221
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 222
    const-string v1, "4"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "4"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 223
    return-object v0
.end method

.method private static createAudio(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V
    .locals 19
    .param p0, "folderContainer"    # Lorg/teleal/cling/support/model/container/Container;
    .param p1, "localAudio"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;

    .prologue
    .line 906
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getId()J

    move-result-wide v14

    .line 907
    .local v14, "audio_id":J
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 908
    .local v16, "item_id":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 910
    .local v7, "link":Ljava/lang/String;
    new-instance v2, Lorg/teleal/cling/support/model/Res;

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getDuration()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 912
    .local v2, "res":Lorg/teleal/cling/support/model/Res;
    new-instance v8, Lorg/teleal/cling/support/model/item/AudioItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getArtist()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x1

    new-array v13, v3, [Lorg/teleal/cling/support/model/Res;

    const/4 v3, 0x0

    aput-object v2, v13, v3

    invoke-direct/range {v8 .. v13}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 913
    .local v8, "audioItem":Lorg/teleal/cling/support/model/item/AudioItem;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    new-instance v4, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {v8, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 914
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 915
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 917
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getAlbumArt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 918
    .local v18, "thumb_id":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 919
    invoke-static/range {v18 .. v18}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 920
    .local v17, "thumbLink":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addObjectAlbumArtProperty(Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;)V

    .line 923
    .end local v17    # "thumbLink":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/teleal/cling/support/model/container/Container;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 924
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 926
    return-void
.end method

.method private static createAudioAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V
    .locals 5
    .param p0, "localAudio"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getFolder()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "folderStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_folder_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "folder_id":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrAddNewAudioFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 902
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudio(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V

    .line 903
    return-void
.end method

.method private static createAudios(Landroid/net/Uri;)V
    .locals 30
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 570
    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->audios:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 572
    const/16 v4, 0xb

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "mime_type"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "_size"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "album"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string v5, "album_id"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string v5, "_display_name"

    aput-object v5, v6, v4

    const/16 v4, 0xa

    const-string v5, "date_added"

    aput-object v5, v6, v4

    .line 579
    .local v6, "audioColumns":[Ljava/lang/String;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date_added COLLATE LOCALIZED DESC"

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 580
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 582
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->whetherStopLoading()V

    .line 584
    const-string v4, "_id"

    .line 585
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 584
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 586
    .local v24, "id":J
    const-string v4, "title"

    .line 587
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 586
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 588
    .local v27, "title":Ljava/lang/String;
    const-string v4, "_display_name"

    .line 589
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 588
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 590
    .local v17, "displayName":Ljava/lang/String;
    const-string v4, "artist"

    .line 591
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 590
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 592
    .local v13, "creator":Ljava/lang/String;
    const-string v4, "_data"

    .line 593
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 592
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 594
    .local v21, "filePath":Ljava/lang/String;
    const-string v4, "mime_type"

    .line 596
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 595
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 597
    .local v26, "mimeType":Ljava/lang/String;
    const-string v4, "_size"

    .line 598
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 597
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 599
    .local v28, "size":J
    const-string v4, "duration"

    .line 601
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 600
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 602
    .local v18, "duration":J
    const-string v4, "album"

    .line 603
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 602
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 604
    .local v10, "album":Ljava/lang/String;
    const-string v4, "album_id"

    .line 605
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 604
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 607
    .local v14, "album_id":J
    new-instance v23, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;

    invoke-direct/range {v23 .. v23}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;-><init>()V

    .line 608
    .local v23, "localAudio":Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;
    invoke-virtual/range {v23 .. v25}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setId(J)V

    .line 609
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setTitle(Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setMimeType(Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setPath(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, v23

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setSize(J)V

    .line 613
    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setDuration(J)V

    .line 614
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setArtist(Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setAlbum(Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setAlbumId(J)V

    .line 617
    new-instance v20, Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    .local v20, "file":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 619
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setFolder(Ljava/lang/String;)V

    .line 624
    :goto_0
    invoke-static/range {v24 .. v25}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getGenres(J)Ljava/lang/String;

    move-result-object v22

    .line 625
    .local v22, "genres":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setGenre(Ljava/lang/String;)V

    .line 627
    long-to-int v4, v14

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getAlbumArt(I)Ljava/lang/String;

    move-result-object v12

    .line 628
    .local v12, "albumArtPath":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 629
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v11, "albumArtFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setAlbumArt(Ljava/lang/String;)V

    .line 635
    .end local v11    # "albumArtFile":Ljava/io/File;
    :cond_1
    invoke-static/range {v23 .. v23}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudioAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V

    .line 636
    invoke-static/range {v23 .. v23}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllAudioDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V

    .line 637
    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->audios:Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 640
    .end local v10    # "album":Ljava/lang/String;
    .end local v12    # "albumArtPath":Ljava/lang/String;
    .end local v13    # "creator":Ljava/lang/String;
    .end local v14    # "album_id":J
    .end local v17    # "displayName":Ljava/lang/String;
    .end local v18    # "duration":J
    .end local v20    # "file":Ljava/io/File;
    .end local v21    # "filePath":Ljava/lang/String;
    .end local v22    # "genres":Ljava/lang/String;
    .end local v23    # "localAudio":Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;
    .end local v24    # "id":J
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "size":J
    :cond_2
    return-void

    .line 621
    .restart local v10    # "album":Ljava/lang/String;
    .restart local v13    # "creator":Ljava/lang/String;
    .restart local v14    # "album_id":J
    .restart local v17    # "displayName":Ljava/lang/String;
    .restart local v18    # "duration":J
    .restart local v20    # "file":Ljava/io/File;
    .restart local v21    # "filePath":Ljava/lang/String;
    .restart local v23    # "localAudio":Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;
    .restart local v24    # "id":J
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "title":Ljava/lang/String;
    .restart local v28    # "size":J
    :cond_3
    const-string v4, "[Unknown]"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->setFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createAudiosAlbumsDir()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 884
    const/4 v2, 0x0

    sput-boolean v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    .line 886
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->audios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 887
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->whetherStopLoading()V

    .line 890
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;

    .line 891
    .local v1, "localAudio":Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudioAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V

    .line 892
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllAudioDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;)V

    goto :goto_0

    .line 894
    .end local v1    # "localAudio":Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;
    :cond_0
    return-void
.end method

.method private static createAudiosRootContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 227
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v1, "2"

    const-string v2, "0"

    const v3, 0x7f08004b

    .line 228
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 230
    .local v0, "audioContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 231
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 232
    const-string v1, "2"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "2"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 234
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addAudioRootContainer(Lorg/teleal/cling/support/model/container/Container;)V

    .line 236
    return-object v0
.end method

.method private static createImagesRootContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 111
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v1, "3"

    const-string v2, "0"

    const v3, 0x7f08003e

    .line 112
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container.storageFolder"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 114
    .local v0, "imageContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 115
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 117
    const-string v1, "3"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "3"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 119
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addImageRootContainer(Lorg/teleal/cling/support/model/container/Container;)V

    .line 121
    return-object v0
.end method

.method private static createPhoto(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V
    .locals 14
    .param p0, "folderContainer"    # Lorg/teleal/cling/support/model/container/Container;
    .param p1, "localPhoto"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;

    .prologue
    .line 755
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getId()J

    move-result-wide v8

    .line 756
    .local v8, "photo_id":J
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 757
    .local v6, "item_id":Ljava/lang/String;
    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, "link":Ljava/lang/String;
    new-instance v10, Lorg/teleal/cling/support/model/Res;

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v10, v1, v2, v7}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    .line 761
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

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unkonwn"

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/teleal/cling/support/model/Res;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 763
    .local v0, "imageItem":Lorg/teleal/cling/support/model/item/ImageItem;
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 764
    .local v12, "thumb_id":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 765
    invoke-static {v12}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 766
    .local v11, "thumbLink":Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addObjectAlbumArtProperty(Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;)V

    .line 769
    .end local v11    # "thumbLink":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 770
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 772
    return-void
.end method

.method private static createPhotoAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V
    .locals 5
    .param p0, "localPhoto"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getFolder()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "folderStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_folder_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "folder_id":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrAddNewImageFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 751
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhoto(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V

    .line 752
    return-void
.end method

.method public static createPhotos(Landroid/net/Uri;)V
    .locals 21
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 368
    .local v8, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "date_added"

    aput-object v3, v4, v2

    .line 373
    .local v4, "imageColumns":[Ljava/lang/String;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "datetaken COLLATE LOCALIZED DESC"

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 374
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->whetherStopLoading()V

    .line 378
    const-string v2, "_id"

    .line 379
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 378
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 380
    .local v14, "id":J
    const-string v2, "title"

    .line 381
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 380
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 382
    .local v20, "title":Ljava/lang/String;
    const-string v2, "_display_name"

    .line 383
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 382
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, "displayName":Ljava/lang/String;
    const-string v9, "unkown"

    .line 385
    .local v9, "creator":Ljava/lang/String;
    const-string v2, "_data"

    .line 386
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 385
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 387
    .local v13, "filePath":Ljava/lang/String;
    const-string v2, "mime_type"

    .line 389
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 388
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 390
    .local v16, "mimeType":Ljava/lang/String;
    const-string v2, "_size"

    .line 391
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 390
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 393
    .local v18, "size":J
    new-instance v17, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;

    invoke-direct/range {v17 .. v17}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;-><init>()V

    .line 394
    .local v17, "photo":Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setId(J)V

    .line 395
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setTitle(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setMimeType(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setPath(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {v17 .. v19}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setSize(J)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 401
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setDateCreated(J)V

    .line 402
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setFolder(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {v17 .. v17}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->getDateCreated()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 406
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setYear(Ljava/lang/String;)V

    .line 407
    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setMonth(Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setDay(Ljava/lang/String;)V

    .line 434
    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhotoAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V

    .line 435
    invoke-static/range {v17 .. v17}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllPhotoDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V

    .line 436
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->photos:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    .end local v9    # "creator":Ljava/lang/String;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "id":J
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v17    # "photo":Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;
    .end local v18    # "size":J
    .end local v20    # "title":Ljava/lang/String;
    :cond_1
    return-void

    .line 411
    .restart local v9    # "creator":Ljava/lang/String;
    .restart local v11    # "displayName":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "filePath":Ljava/lang/String;
    .restart local v14    # "id":J
    .restart local v16    # "mimeType":Ljava/lang/String;
    .restart local v17    # "photo":Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;
    .restart local v18    # "size":J
    .restart local v20    # "title":Ljava/lang/String;
    :cond_2
    const-string v2, "1970"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setYear(Ljava/lang/String;)V

    .line 412
    const-string v2, "01"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setMonth(Ljava/lang/String;)V

    .line 413
    const-string v2, "[Unknown]"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->setFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createPhotosAlbumsDir()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v2, 0x0

    sput-boolean v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    .line 711
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 712
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;>;"
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Come into createPhotosAlbumsDir start--><"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 713
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->whetherStopLoading()V

    .line 716
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;

    .line 717
    .local v1, "localPhoto":Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhotoAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;)V

    goto :goto_0

    .line 720
    .end local v1    # "localPhoto":Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Come into createPhotosAlbumsDir end--><"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method protected static createRootNode()Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 77
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 78
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 79
    .local v0, "root":Lorg/teleal/cling/support/model/container/Container;
    new-instance v2, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v3, "object.container"

    invoke-direct {v2, v3}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 80
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 81
    const-string v2, "-1"

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " root directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 83
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setCreator(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 84
    invoke-virtual {v0, v4}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 85
    invoke-virtual {v0, v4}, Lorg/teleal/cling/support/model/container/Container;->setSearchable(Z)V

    .line 86
    sget-object v2, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 87
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 88
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v2, "0"

    invoke-direct {v1, v2, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    .line 89
    .local v1, "rootNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    const-string v3, "0"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addRootContainer(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 93
    return-object v1
.end method

.method private static createVideo(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V
    .locals 20
    .param p0, "videoContainer"    # Lorg/teleal/cling/support/model/container/Container;
    .param p1, "localVideo"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;

    .prologue
    .line 864
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getId()J

    move-result-wide v18

    .line 865
    .local v18, "video_id":J
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 866
    .local v14, "item_id":Ljava/lang/String;
    invoke-static {v14}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 868
    .local v7, "link":Ljava/lang/String;
    new-instance v2, Lorg/teleal/cling/support/model/Res;

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getDuration()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 870
    .local v2, "res":Lorg/teleal/cling/support/model/Res;
    new-instance v8, Lorg/teleal/cling/support/model/item/VideoItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getArtist()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x1

    new-array v13, v3, [Lorg/teleal/cling/support/model/Res;

    const/4 v3, 0x0

    aput-object v2, v13, v3

    invoke-direct/range {v8 .. v13}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 872
    .local v8, "videoItem":Lorg/teleal/cling/support/model/item/VideoItem;
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 873
    .local v16, "thumb_id":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 874
    invoke-static/range {v16 .. v16}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 875
    .local v15, "thumbLink":Ljava/lang/String;
    invoke-static {v8, v15}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addObjectAlbumArtProperty(Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;)V

    .line 878
    .end local v15    # "thumbLink":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/teleal/cling/support/model/container/Container;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 879
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 881
    return-void
.end method

.method private static createVideoAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V
    .locals 5
    .param p0, "localVideo"    # Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getFolder()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "folderStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_folder_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, "folder_id":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrAddNewVideoFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 816
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideo(Lorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V

    .line 817
    return-void
.end method

.method private static createVideos(Landroid/net/Uri;)V
    .locals 30
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->videos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 462
    .local v10, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xa

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "mime_type"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "_size"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "resolution"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string v5, "_display_name"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string v5, "date_added"

    aput-object v5, v6, v4

    .line 470
    .local v6, "videoColumns":[Ljava/lang/String;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "datetaken COLLATE LOCALIZED DESC"

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 471
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 473
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->whetherStopLoading()V

    .line 475
    const-string v4, "_id"

    .line 476
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 475
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 477
    .local v18, "id":J
    const-string v4, "title"

    .line 478
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 477
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 479
    .local v29, "title":Ljava/lang/String;
    const-string v4, "_display_name"

    .line 480
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 479
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, "displayName":Ljava/lang/String;
    const-string v4, "artist"

    .line 482
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 481
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, "creator":Ljava/lang/String;
    const-string v4, "_data"

    .line 484
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 483
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 485
    .local v17, "filePath":Ljava/lang/String;
    const-string v4, "mime_type"

    .line 487
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 486
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 488
    .local v21, "mimeType":Ljava/lang/String;
    const-string v4, "_size"

    .line 489
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 488
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 490
    .local v26, "size":J
    const-string v4, "duration"

    .line 492
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 491
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 493
    .local v14, "duration":J
    const-string v4, "resolution"

    .line 495
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 494
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 497
    .local v24, "resolution":Ljava/lang/String;
    new-instance v20, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;

    invoke-direct/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;-><init>()V

    .line 498
    .local v20, "localVideo":Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setId(J)V

    .line 499
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setTitle(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {v20 .. v21}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setMimeType(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setArtist(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setPath(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setSize(J)V

    .line 504
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setResolution(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setDuration(J)V

    .line 506
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 508
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setDateCreated(J)V

    .line 509
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setFolder(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getDateCreated()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 512
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setYear(Ljava/lang/String;)V

    .line 513
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 514
    .local v22, "mon":I
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    .line 515
    .local v23, "month":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 518
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setMonth(Ljava/lang/String;)V

    .line 519
    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setDay(Ljava/lang/String;)V

    .line 531
    .end local v22    # "mon":I
    .end local v23    # "month":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->queryVideoThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 533
    .local v25, "thumbnail":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v25, v4

    if-eqz v4, :cond_3

    .line 535
    new-instance v28, Ljava/io/File;

    const/4 v4, 0x1

    aget-object v4, v25, v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v28, "thumbnailFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    const/4 v4, 0x1

    aget-object v4, v25, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setThumbPath(Ljava/lang/String;)V

    .line 540
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v25, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setThumbId(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v28    # "thumbnailFile":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideoAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V

    .line 547
    invoke-static/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllVideoDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V

    .line 548
    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->videos:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 551
    .end local v11    # "creator":Ljava/lang/String;
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v14    # "duration":J
    .end local v16    # "file":Ljava/io/File;
    .end local v17    # "filePath":Ljava/lang/String;
    .end local v18    # "id":J
    .end local v20    # "localVideo":Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v24    # "resolution":Ljava/lang/String;
    .end local v25    # "thumbnail":[Ljava/lang/String;
    .end local v26    # "size":J
    .end local v29    # "title":Ljava/lang/String;
    :cond_4
    return-void

    .line 522
    .restart local v11    # "creator":Ljava/lang/String;
    .restart local v13    # "displayName":Ljava/lang/String;
    .restart local v14    # "duration":J
    .restart local v16    # "file":Ljava/io/File;
    .restart local v17    # "filePath":Ljava/lang/String;
    .restart local v18    # "id":J
    .restart local v20    # "localVideo":Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;
    .restart local v21    # "mimeType":Ljava/lang/String;
    .restart local v24    # "resolution":Ljava/lang/String;
    .restart local v26    # "size":J
    .restart local v29    # "title":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getYear()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 523
    const-string v4, "1970"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setYear(Ljava/lang/String;)V

    .line 524
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getMonth()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 525
    const-string v4, "01"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setMonth(Ljava/lang/String;)V

    .line 526
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->getFolder()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 527
    const-string v4, "[Unknown]"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->setFolder(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    .restart local v25    # "thumbnail":[Ljava/lang/String;
    .restart local v28    # "thumbnailFile":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static createVideosAlbumsDir()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 798
    const/4 v2, 0x0

    sput-boolean v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    .line 800
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 801
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->whetherStopLoading()V

    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;

    .line 805
    .local v1, "localVideo":Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideoAlbumDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V

    .line 806
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllVideoDir(Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;)V

    goto :goto_0

    .line 808
    .end local v1    # "localVideo":Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;
    :cond_0
    return-void
.end method

.method private static createVideosRootContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 169
    .local v0, "videoContainer":Lorg/teleal/cling/support/model/container/Container;
    new-instance v1, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v2, "object.container"

    invoke-direct {v1, v2}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 170
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 171
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 172
    const v1, 0x7f08007b

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 174
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 175
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 176
    const-string v1, "1"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "1"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 178
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addVideoRootContainer(Lorg/teleal/cling/support/model/container/Container;)V

    .line 180
    return-object v0
.end method

.method private static getAlbumArt(I)Ljava/lang/String;
    .locals 10
    .param p0, "albumid"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 656
    const-string v7, "content://media/external/audio/albums"

    .line 657
    .local v7, "strAlbums":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album_art"

    aput-object v0, v2, v9

    .line 658
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 660
    .local v6, "cur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 661
    .local v8, "strPath":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 663
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 665
    :cond_0
    if-eqz v6, :cond_1

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_1
    const/4 v6, 0x0

    .line 668
    return-object v8
.end method

.method public static getAudioItemFromPath(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1017
    const-string v11, "audio/*"

    .line 1018
    .local v11, "type":Ljava/lang/String;
    const-string v3, "/sdcard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1020
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v10, "subFile":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1023
    .local v8, "item_id":Ljava/lang/String;
    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1025
    .local v9, "link":Ljava/lang/String;
    new-instance v2, Lorg/teleal/cling/support/model/item/AudioItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0/1/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_folder_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1026
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/teleal/cling/support/model/Res;

    const/4 v12, 0x0

    new-instance v13, Lorg/teleal/cling/support/model/Res;

    new-instance v14, Lorg/teleal/cling/support/model/ProtocolInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http-get:*:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v13, v14, v15, v9}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    aput-object v13, v7, v12

    invoke-direct/range {v2 .. v7}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 1027
    .local v2, "audioItem":Lorg/teleal/cling/support/model/item/AudioItem;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 1029
    return-object v2
.end method

.method public static getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v0

    .line 302
    .local v0, "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGenres(J)Ljava/lang/String;
    .locals 8
    .param p0, "audioId"    # J

    .prologue
    const/4 v3, 0x0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/media/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/genres"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 644
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 646
    .local v7, "genre":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 649
    :cond_0
    if-eqz v6, :cond_1

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 651
    :cond_1
    const/4 v6, 0x0

    .line 652
    return-object v7
.end method

.method public static getImageItemFromPath(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 985
    const-string v11, "image/*"

    .line 986
    .local v11, "type":Ljava/lang/String;
    const-string v3, "/sdcard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 988
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    .local v10, "subFile":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 991
    .local v8, "item_id":Ljava/lang/String;
    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 993
    .local v9, "link":Ljava/lang/String;
    new-instance v2, Lorg/teleal/cling/support/model/item/ImageItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0/3/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image_folder_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 994
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/teleal/cling/support/model/Res;

    const/4 v12, 0x0

    new-instance v13, Lorg/teleal/cling/support/model/Res;

    new-instance v14, Lorg/teleal/cling/support/model/ProtocolInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http-get:*:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v13, v14, v15, v9}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    aput-object v13, v7, v12

    invoke-direct/range {v2 .. v7}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 995
    .local v2, "imageItem":Lorg/teleal/cling/support/model/item/ImageItem;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 997
    return-object v2
.end method

.method public static getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOrAddNewAllAudioFolderContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 4

    .prologue
    .line 958
    const-string v3, "5"

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 959
    .local v1, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v1, :cond_0

    .line 969
    .end local v1    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v1

    .line 962
    .restart local v1    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllMusicLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 963
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    const-string v3, "2"

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 964
    .local v2, "imagesContainer":Lorg/teleal/cling/support/model/container/Container;
    if-nez v2, :cond_1

    .line 965
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createImagesRootContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 966
    :cond_1
    invoke-virtual {v2, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 967
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    move-object v1, v0

    .line 969
    goto :goto_0
.end method

.method private static getOrAddNewAllImageFolderContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 4

    .prologue
    .line 730
    const-string v3, "6"

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 731
    .local v1, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v1, :cond_0

    .line 742
    .end local v1    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v1

    .line 734
    .restart local v1    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllImageLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 736
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    const-string v3, "3"

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 737
    .local v2, "imagesContainer":Lorg/teleal/cling/support/model/container/Container;
    if-nez v2, :cond_1

    .line 738
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createImagesRootContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 739
    :cond_1
    invoke-virtual {v2, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 740
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    move-object v1, v0

    .line 742
    goto :goto_0
.end method

.method private static getOrAddNewAllVideoFolderContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 4

    .prologue
    .line 849
    const-string v3, "4"

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 850
    .local v1, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v1, :cond_0

    .line 860
    .end local v1    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v1

    .line 853
    .restart local v1    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAllVideoLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 854
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    const-string v3, "1"

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 855
    .local v2, "imagesContainer":Lorg/teleal/cling/support/model/container/Container;
    if-nez v2, :cond_1

    .line 856
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createImagesRootContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 857
    :cond_1
    invoke-virtual {v2, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 858
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    move-object v1, v0

    .line 860
    goto :goto_0
.end method

.method private static getOrAddNewAudioFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 929
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 930
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 933
    .end local v0    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v0

    .restart local v0    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    invoke-static {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNewAudioFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOrAddNewImageFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 775
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 776
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 779
    .end local v0    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v0

    .restart local v0    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    invoke-static {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNewImageFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOrAddNewVideoFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 821
    .local v0, "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 824
    .end local v0    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v0

    .restart local v0    # "folderContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    invoke-static {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNewVideoFolderContainer(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOrCreateImageFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 139
    const-string v1, "9"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 140
    .local v0, "imageContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    .end local v0    # "imageContainer":Lorg/teleal/cling/support/model/container/Container;
    const-string v1, "9"

    const-string v2, "3"

    const v3, 0x7f080038

    .line 143
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container.storageFolder"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 145
    .restart local v0    # "imageContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 146
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 148
    const-string v1, "9"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "9"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    goto :goto_0
.end method

.method private static getOrCreateMusicFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 8

    .prologue
    .line 254
    const-string v1, "8"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v7

    .line 255
    .local v7, "audioContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v7, :cond_0

    .line 265
    .end local v7    # "audioContainer":Lorg/teleal/cling/support/model/container/Container;
    :goto_0
    return-object v7

    .line 257
    .restart local v7    # "audioContainer":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    const-string v1, "8"

    const-string v2, "2"

    const v3, 0x7f080038

    .line 258
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container.storageFolder"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 260
    .local v0, "imageContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 261
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 263
    const-string v1, "8"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "8"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    move-object v7, v0

    .line 265
    goto :goto_0
.end method

.method private static getOrCreatePlaylistContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 8

    .prologue
    .line 691
    const-string v1, "10"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 692
    .local v0, "playlistContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 705
    :goto_0
    return-object v0

    .line 694
    :cond_0
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    .end local v0    # "playlistContainer":Lorg/teleal/cling/support/model/container/Container;
    const-string v1, "10"

    const-string v2, "8"

    const v3, 0x7f080057

    .line 695
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container.storageFolder"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 696
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 697
    .restart local v0    # "playlistContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 698
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 700
    const-string v1, "10"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "10"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 702
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrCreateMusicFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v7

    .line 703
    .local v7, "audioFolder":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v7, v0}, Lorg/teleal/cling/support/model/container/Container;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;

    .line 704
    invoke-virtual {v7}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static getOrCreateVideoFolderLevelContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 7

    .prologue
    .line 198
    const-string v1, "7"

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 199
    .local v0, "videoContainer":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-object v0

    .line 201
    :cond_0
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    .end local v0    # "videoContainer":Lorg/teleal/cling/support/model/container/Container;
    const-string v1, "7"

    const-string v2, "1"

    const v3, 0x7f080038

    .line 202
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container.storageFolder"

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 204
    .restart local v0    # "videoContainer":Lorg/teleal/cling/support/model/container/Container;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 205
    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 207
    const-string v1, "7"

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    const-string v3, "7"

    invoke-direct {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    goto :goto_0
.end method

.method public static getRootNode()Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->rootNode:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    return-object v0
.end method

.method public static getVideoItemFromPath(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1001
    const-string v11, "video/*"

    .line 1002
    .local v11, "type":Ljava/lang/String;
    const-string v3, "/sdcard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1004
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v10, "subFile":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1007
    .local v8, "item_id":Ljava/lang/String;
    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1009
    .local v9, "link":Ljava/lang/String;
    new-instance v2, Lorg/teleal/cling/support/model/item/VideoItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0/2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_folder_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1010
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getDLNACreater()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/teleal/cling/support/model/Res;

    const/4 v12, 0x0

    new-instance v13, Lorg/teleal/cling/support/model/Res;

    new-instance v14, Lorg/teleal/cling/support/model/ProtocolInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http-get:*:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v13, v14, v15, v9}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    aput-object v13, v7, v12

    invoke-direct/range {v2 .. v7}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 1011
    .local v2, "videoItem":Lorg/teleal/cling/support/model/item/VideoItem;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->addNode(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)V

    .line 1013
    return-object v2
.end method

.method public static hasNode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->contentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static initAllMedia()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v1, 0x0

    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    .line 313
    :try_start_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initPhotos()V

    .line 314
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initVideos()V

    .line 315
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initAudios()V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 320
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 321
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->audios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 323
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static initAudioAndMusic()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v1, 0x0

    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    .line 333
    :try_start_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initPhotos()V

    .line 334
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initVideos()V

    .line 335
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initAudios()V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "ex":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 340
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 341
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->audios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 343
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static initAudios()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 554
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 557
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudios(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 561
    .local v0, "exception":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v2, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 563
    .end local v0    # "exception":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :catch_1
    move-exception v0

    .line 565
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "audio init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load phone audios from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initPhotos()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 348
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 351
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhotos(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "exception":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v2, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 357
    .end local v0    # "exception":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :catch_1
    move-exception v0

    .line 359
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "photo init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load phone photos from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initPlaylist()V
    .locals 9

    .prologue
    .line 672
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistManager;->getAllPlaylistItem()Ljava/util/List;

    move-result-object v4

    .line 673
    .local v4, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The playlistItems size is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getOrCreatePlaylistContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    .line 675
    .local v2, "playlistContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 677
    .local v3, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :try_start_0
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getMetaData()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createDIDL(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;

    move-result-object v0

    .line 678
    .local v0, "didlObject":Lorg/teleal/cling/support/model/DIDLContent;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/item/Item;

    .line 679
    .local v1, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/item/Item;->getFirstResource()Lorg/teleal/cling/support/model/Res;

    move-result-object v5

    .line 680
    .local v5, "res":Lorg/teleal/cling/support/model/Res;
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->fromLocalType()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 681
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/teleal/cling/support/model/Res;->setValue(Ljava/lang/String;)V

    .line 683
    :cond_0
    invoke-virtual {v2, v1}, Lorg/teleal/cling/support/model/container/Container;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 684
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    .end local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLContent;
    .end local v1    # "item":Lorg/teleal/cling/support/model/item/Item;
    .end local v5    # "res":Lorg/teleal/cling/support/model/Res;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 688
    .end local v3    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_1
    return-void
.end method

.method public static initVideos()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 442
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 445
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideos(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, "exception":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v2, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 451
    .end local v0    # "exception":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :catch_1
    move-exception v0

    .line 453
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "audio init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load phone audios from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stopLoading()V
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    .line 1034
    return-void
.end method

.method private static whetherStopLoading()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 1037
    sget-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->isStopLoading:Z

    if-eqz v0, :cond_0

    .line 1038
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    const-string v1, "media stop loading"

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_0
    return-void
.end method
