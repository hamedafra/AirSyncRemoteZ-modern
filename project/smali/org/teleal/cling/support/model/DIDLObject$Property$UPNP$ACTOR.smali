.class public Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;
.super Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;
.source "DIDLObject.java"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACTOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;-><init>()V

    .line 221
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PersonWithRole;)V
    .locals 1
    .param p1, "value"    # Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;Ljava/lang/String;)V

    .line 225
    return-void
.end method
