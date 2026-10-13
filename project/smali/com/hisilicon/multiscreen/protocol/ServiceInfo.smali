.class public Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mServiceName:Ljava/lang/String;

.field private mServicePort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo$1;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo$1;-><init>()V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePort()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->mServicePort:I

    return v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setServicePort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->mServicePort:I

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->mServicePort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
