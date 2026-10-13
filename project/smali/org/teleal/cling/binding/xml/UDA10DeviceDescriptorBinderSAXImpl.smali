.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.super Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;
.source "UDA10DeviceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$SpecVersionHandler;
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public describe(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .locals 6
    .param p2, "descriptorXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/teleal/cling/model/meta/Device;",
            ">(TD;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "undescribedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 58
    :cond_0
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string v4, "Null or empty descriptor"

    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_1
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Populating device from XML descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lorg/teleal/common/xml/SAXParser;

    invoke-direct {v2}, Lorg/teleal/common/xml/SAXParser;-><init>()V

    .line 68
    .local v2, "parser":Lorg/teleal/common/xml/SAXParser;
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableDevice;-><init>()V

    .line 69
    .local v0, "descriptor":Lorg/teleal/cling/binding/staging/MutableDevice;
    new-instance v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;

    invoke-direct {v3, v0, v2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/teleal/common/xml/SAXParser;)V

    .line 72
    new-instance v3, Lorg/xml/sax/InputSource;

    .line 74
    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 71
    invoke-virtual {v2, v3}, Lorg/teleal/common/xml/SAXParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 79
    invoke-virtual {v0, p1}, Lorg/teleal/cling/binding/staging/MutableDevice;->build(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 81
    .end local v0    # "descriptor":Lorg/teleal/cling/binding/staging/MutableDevice;
    .end local v2    # "parser":Lorg/teleal/common/xml/SAXParser;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ex":Lorg/teleal/cling/model/ValidationException;
    throw v1

    .line 83
    .end local v1    # "ex":Lorg/teleal/cling/model/ValidationException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse device descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
