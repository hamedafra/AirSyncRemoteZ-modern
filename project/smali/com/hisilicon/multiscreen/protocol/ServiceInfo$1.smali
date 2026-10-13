.class final Lcom/hisilicon/multiscreen/protocol/ServiceInfo$1;
.super Ljava/lang/Object;
.source "ServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/hisilicon/multiscreen/protocol/ServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 36
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;-><init>()V

    .line 37
    .local v0, "p":Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->setServicePort(I)V

    .line 39
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 45
    new-array v0, p1, [Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo$1;->newArray(I)[Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v0

    return-object v0
.end method
