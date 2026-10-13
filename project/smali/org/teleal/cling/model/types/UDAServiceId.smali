.class public Lorg/teleal/cling/model/types/UDAServiceId;
.super Lorg/teleal/cling/model/types/ServiceId;
.source "UDAServiceId.java"


# static fields
.field public static final BROKEN_DEFAULT_NAMESPACE:Ljava/lang/String; = "schemas-upnp-org"

.field public static final BROKEN_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "upnp-org"

.field public static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "urn:upnp-org:serviceId:([a-zA-Z_0-9\\-:\\.]{1,64})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 38
    sput-object v0, Lorg/teleal/cling/model/types/UDAServiceId;->PATTERN:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "urn:schemas-upnp-org:service:([a-zA-Z_0-9\\-:\\.]{1,64})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 41
    sput-object v0, Lorg/teleal/cling/model/types/UDAServiceId;->BROKEN_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "upnp-org"

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static bridge synthetic valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lorg/teleal/cling/model/types/UDAServiceId;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDAServiceId;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDAServiceId;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 49
    sget-object v1, Lorg/teleal/cling/model/types/UDAServiceId;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 50
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lorg/teleal/cling/model/types/UDAServiceId;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/types/UDAServiceId;-><init>(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-object v1

    .line 53
    :cond_0
    sget-object v1, Lorg/teleal/cling/model/types/UDAServiceId;->BROKEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Lorg/teleal/cling/model/types/UDAServiceId;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/types/UDAServiceId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse UDA service ID string (upnp-org/id): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
