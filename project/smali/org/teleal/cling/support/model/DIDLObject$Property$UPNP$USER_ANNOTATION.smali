.class public Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;
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
    name = "USER_ANNOTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;-><init>(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 509
    const-string v0, "userAnnotation"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    return-void
.end method
