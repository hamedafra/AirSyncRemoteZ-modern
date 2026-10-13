.class public abstract Lorg/teleal/cling/model/message/UpnpOperation;
.super Ljava/lang/Object;
.source "UpnpOperation.java"


# instance fields
.field private httpMinorVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpOperation;->httpMinorVersion:I

    .line 25
    return-void
.end method


# virtual methods
.method public getHttpMinorVersion()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/teleal/cling/model/message/UpnpOperation;->httpMinorVersion:I

    return v0
.end method

.method public setHttpMinorVersion(I)V
    .locals 0
    .param p1, "httpMinorVersion"    # I

    .prologue
    .line 34
    iput p1, p0, Lorg/teleal/cling/model/message/UpnpOperation;->httpMinorVersion:I

    .line 35
    return-void
.end method
