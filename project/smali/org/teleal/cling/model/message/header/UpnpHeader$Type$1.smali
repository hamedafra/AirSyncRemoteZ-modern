.class Lorg/teleal/cling/model/message/header/UpnpHeader$Type$1;
.super Ljava/util/HashMap;
.source "UpnpHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-static {}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->values()[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 1
    return-void

    .line 88
    :cond_0
    aget-object v0, v2, v1

    .line 89
    .local v0, "t":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
