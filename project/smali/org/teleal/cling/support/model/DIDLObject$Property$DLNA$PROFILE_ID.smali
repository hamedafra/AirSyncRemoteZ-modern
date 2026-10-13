.class public Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PROFILE_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/teleal/cling/support/model/DIDLAttribute;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V

    .line 523
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V
    .locals 1
    .param p1, "value"    # Lorg/teleal/cling/support/model/DIDLAttribute;

    .prologue
    .line 526
    const-string v0, "profileID"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    return-void
.end method
