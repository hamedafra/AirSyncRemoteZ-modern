.class Lorg/teleal/cling/model/types/Datatype$Builtin$1;
.super Ljava/util/HashMap;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/types/Datatype$Builtin;
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
        "Lorg/teleal/cling/model/types/Datatype$Builtin;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {}, Lorg/teleal/cling/model/types/Datatype$Builtin;->values()[Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 1
    return-void

    .line 144
    :cond_0
    aget-object v0, v2, v1

    .line 146
    .local v0, "b":Lorg/teleal/cling/model/types/Datatype$Builtin;, "Lorg/teleal/cling/model/types/Datatype$Builtin;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDescriptorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/teleal/cling/model/types/Datatype$Builtin$1;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDescriptorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
