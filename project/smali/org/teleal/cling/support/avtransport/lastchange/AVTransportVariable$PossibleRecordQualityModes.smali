.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;
.super Lorg/teleal/cling/support/lastchange/EventedValueEnumArray;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PossibleRecordQualityModes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValueEnumArray",
        "<",
        "Lorg/teleal/cling/support/model/RecordQualityMode;",
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
    .line 204
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/util/Map$Entry;)V

    .line 205
    return-void
.end method

.method public constructor <init>([Lorg/teleal/cling/support/model/RecordQualityMode;)V
    .locals 0
    .param p1, "e"    # [Lorg/teleal/cling/support/model/RecordQualityMode;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/lang/Enum;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf([Ljava/lang/String;)[Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;->enumValueOf([Ljava/lang/String;)[Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v0

    return-object v0
.end method

.method protected enumValueOf([Ljava/lang/String;)[Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/RecordQualityMode;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/model/RecordQualityMode;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/support/model/RecordQualityMode;

    return-object v2

    .line 210
    :cond_0
    aget-object v1, p1, v2

    .line 211
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lorg/teleal/cling/support/model/RecordQualityMode;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
