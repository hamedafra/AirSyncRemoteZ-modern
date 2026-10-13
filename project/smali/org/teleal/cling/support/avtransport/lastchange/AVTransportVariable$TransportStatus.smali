.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportStatus;
.super Lorg/teleal/cling/support/lastchange/EventedValueEnum;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValueEnum",
        "<",
        "Lorg/teleal/cling/support/model/TransportStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/TransportStatus;)V
    .locals 0
    .param p1, "transportStatus"    # Lorg/teleal/cling/support/model/TransportStatus;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;-><init>(Ljava/lang/Enum;)V

    .line 86
    return-void
.end method

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
    .line 89
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;-><init>([Ljava/util/Map$Entry;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportStatus;->enumValueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v0

    return-object v0
.end method

.method protected enumValueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Lorg/teleal/cling/support/model/TransportStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v0

    return-object v0
.end method
