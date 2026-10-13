.class public Lorg/teleal/cling/support/lastchange/EventedValueURI;
.super Lorg/teleal/cling/support/lastchange/EventedValue;
.source "EventedValueURI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/lastchange/EventedValue",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/teleal/cling/support/lastchange/EventedValueURI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/lastchange/EventedValueURI;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "value"    # Ljava/net/URI;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 37
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
    .line 40
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->URI:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

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
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueURI;->valueOf(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    sget-object v1, Lorg/teleal/cling/support/lastchange/EventedValueURI;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring invalid URI in evented value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method
