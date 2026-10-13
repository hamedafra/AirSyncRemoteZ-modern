.class public Lorg/teleal/cling/model/resource/IconResource;
.super Lorg/teleal/cling/model/resource/Resource;
.source "IconResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/resource/Resource",
        "<",
        "Lorg/teleal/cling/model/meta/Icon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/Icon;)V
    .locals 0
    .param p1, "localURI"    # Ljava/net/URI;
    .param p2, "model"    # Lorg/teleal/cling/model/meta/Icon;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/resource/Resource;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
