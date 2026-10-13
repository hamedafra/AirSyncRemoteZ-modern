.class public Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field private item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private reachable:Z


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Z)V
    .locals 0
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "reachable"    # Z

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 303
    iput-boolean p2, p0, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->reachable:Z

    .line 304
    return-void
.end method


# virtual methods
.method public getItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method public isReachable()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->reachable:Z

    return v0
.end method

.method public setItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
    .locals 0
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 312
    return-void
.end method

.method public setReachable(Z)V
    .locals 0
    .param p1, "reachable"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/utility/Utility$CheckResult;->reachable:Z

    .line 320
    return-void
.end method
