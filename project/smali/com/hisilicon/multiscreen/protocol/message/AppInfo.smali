.class public Lcom/hisilicon/multiscreen/protocol/message/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1ee319e4bf1b9dadL


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mIcon:[B

.field private mIndex:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mAppName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mPackageName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIndex:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIcon:[B

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageIcon()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIcon:[B

    return-object v0
.end method

.method public getPackageIndex()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIndex:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mAppName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPackageIcon([B)V
    .locals 1
    .param p1, "icon"    # [B

    .prologue
    .line 73
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIcon:[B

    .line 74
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIcon:[B

    .line 75
    return-void
.end method

.method public setPackageIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mIndex:I

    .line 95
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->mPackageName:Ljava/lang/String;

    .line 30
    return-void
.end method
