.class Lorg/teleal/cling/support/model/StorageMedium$1;
.super Ljava/util/HashMap;
.source "StorageMedium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/StorageMedium;
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
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-static {}, Lorg/teleal/cling/support/model/StorageMedium;->values()[Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 1
    return-void

    .line 65
    :cond_0
    aget-object v0, v2, v1

    .line 66
    .local v0, "e":Lorg/teleal/cling/support/model/StorageMedium;
    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->access$2(Lorg/teleal/cling/support/model/StorageMedium;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/teleal/cling/support/model/StorageMedium$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
