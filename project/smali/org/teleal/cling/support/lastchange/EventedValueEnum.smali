.class public abstract Lorg/teleal/cling/support/lastchange/EventedValueEnum;
.super Lorg/teleal/cling/support/lastchange/EventedValue;
.source "EventedValueEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum;",
        ">",
        "Lorg/teleal/cling/support/lastchange/EventedValue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValueEnum;, "Lorg/teleal/cling/support/lastchange/EventedValueEnum<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 32
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
    .line 35
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValueEnum;, "Lorg/teleal/cling/support/lastchange/EventedValueEnum<TE;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract enumValueOf(Ljava/lang/String;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method

.method protected getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValueEnum;, "Lorg/teleal/cling/support/lastchange/EventedValueEnum<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValueEnum;, "Lorg/teleal/cling/support/lastchange/EventedValueEnum<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValueEnum;, "Lorg/teleal/cling/support/lastchange/EventedValueEnum<TE;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;->enumValueOf(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueEnum;->valueOf(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
