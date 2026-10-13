.class public final enum Lcom/hisilicon/multiscreen/scene/SceneType;
.super Ljava/lang/Enum;
.source "SceneType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/multiscreen/scene/SceneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/multiscreen/scene/SceneType;

.field public static final enum BASE_SCENE:Lcom/hisilicon/multiscreen/scene/SceneType;

.field public static final enum MIRROR:Lcom/hisilicon/multiscreen/scene/SceneType;

.field public static final enum MIRROR_SENSOR:Lcom/hisilicon/multiscreen/scene/SceneType;

.field public static final enum REMOTE_AIRMOUSE:Lcom/hisilicon/multiscreen/scene/SceneType;

.field public static final enum REMOTE_TOUCH:Lcom/hisilicon/multiscreen/scene/SceneType;

.field private static final SCENE_INDEX_BASE:I = 0x0

.field private static final SCENE_INDEX_MIRROR:I = 0x4

.field private static final SCENE_INDEX_MIRROR_GSENSOR:I = 0x3

.field private static final SCENE_INDEX_REMOTE_AIRMOUSE:I = 0x2

.field private static final SCENE_INDEX_REMOTE_TOUCH:I = 0x1


# instance fields
.field private mIndex:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    const-string v1, "BASE_SCENE"

    const-string v2, "BASE_SCENE"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/hisilicon/multiscreen/scene/SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->BASE_SCENE:Lcom/hisilicon/multiscreen/scene/SceneType;

    new-instance v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    const-string v1, "REMOTE_TOUCH"

    const-string v2, "REMOTE_TOUCH"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/hisilicon/multiscreen/scene/SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->REMOTE_TOUCH:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 6
    new-instance v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    const-string v1, "REMOTE_AIRMOUSE"

    const-string v2, "REMOTE_AIRMOUSE"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/hisilicon/multiscreen/scene/SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->REMOTE_AIRMOUSE:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 7
    new-instance v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    const-string v1, "MIRROR_SENSOR"

    const-string v2, "MIRROR_SENSOR"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/hisilicon/multiscreen/scene/SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->MIRROR_SENSOR:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 8
    new-instance v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    const-string v1, "MIRROR"

    const-string v2, "MIRROR"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/hisilicon/multiscreen/scene/SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->MIRROR:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hisilicon/multiscreen/scene/SceneType;

    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->BASE_SCENE:Lcom/hisilicon/multiscreen/scene/SceneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->REMOTE_TOUCH:Lcom/hisilicon/multiscreen/scene/SceneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->REMOTE_AIRMOUSE:Lcom/hisilicon/multiscreen/scene/SceneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->MIRROR_SENSOR:Lcom/hisilicon/multiscreen/scene/SceneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->MIRROR:Lcom/hisilicon/multiscreen/scene/SceneType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->$VALUES:[Lcom/hisilicon/multiscreen/scene/SceneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/hisilicon/multiscreen/scene/SceneType;->mName:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/hisilicon/multiscreen/scene/SceneType;->mIndex:I

    .line 74
    return-void
.end method

.method public static getType(I)Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 17
    invoke-static {}, Lcom/hisilicon/multiscreen/scene/SceneType;->values()[Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 19
    .local v0, "status":Lcom/hisilicon/multiscreen/scene/SceneType;
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/scene/SceneType;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 24
    .end local v0    # "status":Lcom/hisilicon/multiscreen/scene/SceneType;
    :goto_1
    return-object v0

    .line 17
    .restart local v0    # "status":Lcom/hisilicon/multiscreen/scene/SceneType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "status":Lcom/hisilicon/multiscreen/scene/SceneType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getType(Ljava/lang/String;)Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 3
    .param p0, "strOfIndex"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    .local v1, "index":I
    invoke-static {v1}, Lcom/hisilicon/multiscreen/scene/SceneType;->getType(I)Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v2

    .end local v1    # "index":I
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/hisilicon/multiscreen/scene/SceneType;->BASE_SCENE:Lcom/hisilicon/multiscreen/scene/SceneType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/scene/SceneType;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->$VALUES:[Lcom/hisilicon/multiscreen/scene/SceneType;

    invoke-virtual {v0}, [Lcom/hisilicon/multiscreen/scene/SceneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/multiscreen/scene/SceneType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/hisilicon/multiscreen/scene/SceneType;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/multiscreen/scene/SceneType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrOfIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/hisilicon/multiscreen/scene/SceneType;->mIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
