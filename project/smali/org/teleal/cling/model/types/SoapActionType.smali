.class public Lorg/teleal/cling/model/types/SoapActionType;
.super Ljava/lang/Object;
.source "SoapActionType.java"


# static fields
.field public static final MAGIC_CONTROL_NS:Ljava/lang/String; = "schemas-upnp-org"

.field public static final MAGIC_CONTROL_TYPE:Ljava/lang/String; = "control-1-0"

.field public static final PATTERN:Ljava/util/regex/Pattern;

.field public static final PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;


# instance fields
.field private actionName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "urn:schemas-upnp-org:control-1-0#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/teleal/cling/model/types/SoapActionType;->PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+)#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/teleal/cling/model/types/SoapActionType;->PATTERN:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/Integer;
    .param p4, "actionName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/teleal/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/teleal/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    .line 55
    iput-object p4, p0, Lorg/teleal/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    .line 57
    if-eqz p4, :cond_0

    invoke-static {p4}, Lorg/teleal/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action name contains illegal characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "actionName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/teleal/cling/model/types/ServiceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/ServiceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/ServiceType;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/SoapActionType;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 79
    sget-object v2, Lorg/teleal/cling/model/types/SoapActionType;->PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 80
    .local v0, "magicControlMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Lorg/teleal/cling/model/types/SoapActionType;

    const-string v3, "schemas-upnp-org"

    const-string v4, "control-1-0"

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-object v2

    .line 83
    :cond_0
    sget-object v2, Lorg/teleal/cling/model/types/SoapActionType;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 84
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v2, Lorg/teleal/cling/model/types/SoapActionType;

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v2, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t parse action type string (namespace/type/version#actionName): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lorg/teleal/cling/model/types/SoapActionType;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 114
    check-cast v0, Lorg/teleal/cling/model/types/SoapActionType;

    .line 116
    .local v0, "that":Lorg/teleal/cling/model/types/SoapActionType;
    iget-object v3, p0, Lorg/teleal/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 117
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 118
    :cond_5
    iget-object v3, p0, Lorg/teleal/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 119
    :cond_6
    iget-object v3, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    iget-object v4, v0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/teleal/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/teleal/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lorg/teleal/cling/model/types/ServiceType;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/teleal/cling/model/types/ServiceType;

    iget-object v1, p0, Lorg/teleal/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    iget-object v2, p0, Lorg/teleal/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    iget-object v3, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lorg/teleal/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 127
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 129
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/teleal/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 130
    return v0

    .line 129
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
