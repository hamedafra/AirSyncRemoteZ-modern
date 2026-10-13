.class public Lorg/teleal/cling/support/lastchange/EventedValueShort;
.super Lorg/teleal/cling/support/lastchange/EventedValue;
.source "EventedValueShort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValue",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Short;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Short;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 31
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
    .line 34
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method
