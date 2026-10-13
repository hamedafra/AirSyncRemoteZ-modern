.class public Lcom/hisilicon/multiscreen/scene/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"


# static fields
.field private static mIsOpened:Z

.field private static mSceneType:Lcom/hisilicon/multiscreen/scene/SceneType;


# instance fields
.field private mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mIsOpened:Z

    .line 9
    sget-object v0, Lcom/hisilicon/multiscreen/scene/SceneType;->BASE_SCENE:Lcom/hisilicon/multiscreen/scene/SceneType;

    sput-object v0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneType:Lcom/hisilicon/multiscreen/scene/SceneType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .line 22
    sget-object v0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneType:Lcom/hisilicon/multiscreen/scene/SceneType;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/scene/SceneManager;->setScene(Lcom/hisilicon/multiscreen/scene/SceneType;)V

    .line 23
    return-void
.end method

.method private changeScene(Lcom/hisilicon/multiscreen/scene/SceneType;)Z
    .locals 1
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 77
    invoke-static {}, Lcom/hisilicon/multiscreen/scene/SceneManager;->getScene()Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/scene/SceneManager;->setScene(Lcom/hisilicon/multiscreen/scene/SceneType;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScene()Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneType:Lcom/hisilicon/multiscreen/scene/SceneType;

    return-object v0
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mIsOpened:Z

    return v0
.end method

.method private setScene(Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 0
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 67
    sput-object p1, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneType:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 68
    return-void
.end method

.method public static setSwitch(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mIsOpened:Z

    .line 33
    return-void
.end method


# virtual methods
.method public renew(Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 1
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 50
    invoke-static {}, Lcom/hisilicon/multiscreen/scene/SceneManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/scene/SceneManager;->changeScene(Lcom/hisilicon/multiscreen/scene/SceneType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "Scene of STB changes."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/scene/ISceneListener;->sceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hisilicon/multiscreen/scene/SceneManager;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .line 42
    return-void
.end method
