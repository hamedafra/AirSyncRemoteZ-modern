.class public Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$DC$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject$Property$DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PUBLISHER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/teleal/cling/support/model/Person;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$DC$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/Person;)V
    .locals 1
    .param p1, "value"    # Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    return-void
.end method
