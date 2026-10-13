.class public Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;
.super Ljava/lang/Object;
.source "DMRData.java"


# static fields
.field private static mDMRData:Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;->mDMRData:Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;

    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;->mDMRData:Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;

    .line 13
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;->mDMRData:Lcom/hisilicon/dlna/dmc/gui/browse/DMRData;

    return-object v0
.end method
