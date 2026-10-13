.class public Lorg/teleal/cling/support/model/container/StorageSystem;
.super Lorg/teleal/cling/support/model/container/Container;
.source "StorageSystem.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageSystem"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/StorageSystem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 32
    sget-object v0, Lorg/teleal/cling/support/model/container/StorageSystem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;
    .param p6, "storageTotal"    # Ljava/lang/Long;
    .param p7, "storageUsed"    # Ljava/lang/Long;
    .param p8, "storageFree"    # Ljava/lang/Long;
    .param p9, "storageMaxPartition"    # Ljava/lang/Long;
    .param p10, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 46
    sget-object v6, Lorg/teleal/cling/support/model/container/StorageSystem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 47
    if-eqz p6, :cond_0

    .line 48
    invoke-virtual {p0, p6}, Lorg/teleal/cling/support/model/container/StorageSystem;->setStorageTotal(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;

    .line 49
    :cond_0
    if-eqz p7, :cond_1

    .line 50
    invoke-virtual {p0, p7}, Lorg/teleal/cling/support/model/container/StorageSystem;->setStorageUsed(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;

    .line 51
    :cond_1
    if-eqz p8, :cond_2

    .line 52
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->setStorageFree(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;

    .line 53
    :cond_2
    if-eqz p9, :cond_3

    .line 54
    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->setStorageMaxPartition(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;

    .line 55
    :cond_3
    if-eqz p10, :cond_4

    .line 56
    move-object/from16 v0, p10

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/container/StorageSystem;

    .line 57
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;
    .param p6, "storageTotal"    # Ljava/lang/Long;
    .param p7, "storageUsed"    # Ljava/lang/Long;
    .param p8, "storageFree"    # Ljava/lang/Long;
    .param p9, "storageMaxPartition"    # Ljava/lang/Long;
    .param p10, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 41
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/teleal/cling/support/model/container/StorageSystem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/teleal/cling/support/model/StorageMedium;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/Container;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getStorageFree()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageMaxPartition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageMedium()Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getStorageTotal()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageUsed()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public setStorageFree(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;
    .locals 1
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 82
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 83
    return-object p0
.end method

.method public setStorageMaxPartition(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;
    .locals 1
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 91
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 92
    return-object p0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/container/StorageSystem;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 100
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 101
    return-object p0
.end method

.method public setStorageTotal(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;
    .locals 1
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 64
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 65
    return-object p0
.end method

.method public setStorageUsed(Ljava/lang/Long;)Lorg/teleal/cling/support/model/container/StorageSystem;
    .locals 1
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 73
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 74
    return-object p0
.end method
