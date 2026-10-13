.class public Lorg/teleal/cling/support/model/ProtocolInfos;
.super Ljava/util/ArrayList;
.source "ProtocolInfos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/teleal/cling/support/model/ProtocolInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/teleal/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "infos":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 41
    :cond_0
    return-void

    .line 39
    :cond_1
    aget-object v0, v1, v2

    .line 40
    .local v0, "info":Ljava/lang/String;
    new-instance v4, Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/model/ProtocolInfos;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/teleal/cling/support/model/ProtocolInfo;)V
    .locals 3
    .param p1, "info"    # [Lorg/teleal/cling/support/model/ProtocolInfo;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 34
    return-void

    .line 31
    :cond_0
    aget-object v0, p1, v1

    .line 32
    .local v0, "protocolInfo":Lorg/teleal/cling/support/model/ProtocolInfo;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/ProtocolInfos;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/ProtocolInfos;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/ProtocolInfos;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
