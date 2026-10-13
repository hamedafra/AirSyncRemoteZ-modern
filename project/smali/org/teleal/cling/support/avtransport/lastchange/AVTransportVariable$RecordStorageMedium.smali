.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$RecordStorageMedium;
.super Lorg/teleal/cling/support/lastchange/EventedValueEnum;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordStorageMedium"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValueEnum",
        "<",
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 0
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;-><init>(Ljava/lang/Enum;)V

    .line 102
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
    .line 105
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;-><init>([Ljava/util/Map$Entry;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$RecordStorageMedium;->enumValueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v0

    return-object v0
.end method

.method protected enumValueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p1}, Lorg/teleal/cling/support/model/StorageMedium;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v0

    return-object v0
.end method
