.class public Lorg/teleal/cling/model/types/UDADeviceType;
.super Lorg/teleal/cling/model/types/DeviceType;
.source "UDADeviceType.java"


# static fields
.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "schemas-upnp-org"

.field public static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "urn:schemas-upnp-org:device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 35
    sput-object v0, Lorg/teleal/cling/model/types/UDADeviceType;->PATTERN:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "schemas-upnp-org"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/teleal/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 43
    const-string v0, "schemas-upnp-org"

    invoke-direct {p0, v0, p1, p2}, Lorg/teleal/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public static bridge synthetic valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DeviceType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lorg/teleal/cling/model/types/UDADeviceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDADeviceType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDADeviceType;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v1, Lorg/teleal/cling/model/types/UDADeviceType;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lorg/teleal/cling/model/types/UDADeviceType;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 51
    :cond_0
    new-instance v1, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse UDA device type string (namespace/type/version): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
