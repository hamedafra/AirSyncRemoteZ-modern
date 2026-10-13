.class public Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;
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
    name = "ALBUM_ART_URI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "value"    # Ljava/net/URI;

    .prologue
    .line 315
    const-string v0, "albumArtURI"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/List;)V
    .locals 1
    .param p1, "value"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;>;"
    const-string v0, "albumArtURI"

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 320
    return-void
.end method
