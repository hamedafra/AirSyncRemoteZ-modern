.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;
.super Lorg/teleal/cling/support/lastchange/EventedValueEnumArray;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PossibleRecordStorageMedia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValueEnumArray",
        "<",
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/util/Map$Entry;)V

    .line 121
    return-void
.end method

.method public constructor <init>([Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 0
    .param p1, "e"    # [Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/lang/Enum;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf([Ljava/lang/String;)[Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;->enumValueOf([Ljava/lang/String;)[Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v0

    return-object v0
.end method

.method protected enumValueOf([Ljava/lang/String;)[Lorg/teleal/cling/support/model/StorageMedium;
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/StorageMedium;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/model/StorageMedium;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/support/model/StorageMedium;

    return-object v2

    .line 126
    :cond_0
    aget-object v1, p1, v2

    .line 127
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lorg/teleal/cling/support/model/StorageMedium;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
