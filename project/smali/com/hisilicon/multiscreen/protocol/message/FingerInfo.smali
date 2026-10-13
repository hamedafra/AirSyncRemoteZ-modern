.class public Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
.super Ljava/lang/Object;
.source "FingerInfo.java"


# instance fields
.field private mIsPressed:Z

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPress()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->mIsPressed:Z

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->mY:I

    return v0
.end method

.method public setPress(Z)V
    .locals 0
    .param p1, "press"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->mIsPressed:Z

    .line 68
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->mX:I

    .line 24
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->mY:I

    .line 46
    return-void
.end method
