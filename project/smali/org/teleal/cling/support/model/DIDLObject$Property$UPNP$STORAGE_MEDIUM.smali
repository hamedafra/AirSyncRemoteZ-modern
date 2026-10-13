.class public Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STORAGE_MEDIUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 1
    .param p1, "value"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 389
    const-string v0, "storageMedium"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    return-void
.end method
