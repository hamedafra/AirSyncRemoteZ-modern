.class public Lorg/teleal/cling/model/types/DeviceType;
.super Ljava/lang/Object;
.source "DeviceType.java"


# static fields
.field public static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private namespace:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/teleal/cling/model/types/DeviceType;->PATTERN:Ljava/util/regex/Pattern;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    .line 48
    if-eqz p1, :cond_0

    const-string v0, "[a-zA-Z0-9\\-\\.]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device type namespace contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    .line 53
    if-eqz p2, :cond_1

    const-string v0, "[a-zA-Z_0-9\\-]{1,64}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device type suffix too long (64) or contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p2, p0, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    .line 58
    iput p3, p0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DeviceType;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 81
    .local v0, "deviceType":Lorg/teleal/cling/model/types/DeviceType;
    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    :try_start_0
    invoke-static {p0}, Lorg/teleal/cling/model/types/UDADeviceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDADeviceType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    if-nez v0, :cond_0

    .line 92
    sget-object v2, Lorg/teleal/cling/model/types/DeviceType;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 93
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    new-instance v0, Lorg/teleal/cling/model/types/DeviceType;

    .end local v0    # "deviceType":Lorg/teleal/cling/model/types/DeviceType;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/teleal/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0

    .line 96
    .restart local v0    # "deviceType":Lorg/teleal/cling/model/types/DeviceType;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    new-instance v2, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t parse device type string (namespace/type/version): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lorg/teleal/cling/model/types/DeviceType;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 123
    check-cast v0, Lorg/teleal/cling/model/types/DeviceType;

    .line 125
    .local v0, "that":Lorg/teleal/cling/model/types/DeviceType;
    iget v3, p0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    iget v4, v0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 126
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 127
    :cond_5
    iget-object v3, p0, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 135
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 136
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    add-int v0, v1, v2

    .line 137
    return v0
.end method

.method public implementsVersion(Lorg/teleal/cling/model/types/DeviceType;)Z
    .locals 3
    .param p1, "that"    # Lorg/teleal/cling/model/types/DeviceType;

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    iget-object v2, p1, Lorg/teleal/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-object v1, p0, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    iget-object v2, p1, Lorg/teleal/cling/model/types/DeviceType;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget v1, p0, Lorg/teleal/cling/model/types/DeviceType;->version:I

    iget v2, p1, Lorg/teleal/cling/model/types/DeviceType;->version:I

    if-lt v1, v2, :cond_0

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
