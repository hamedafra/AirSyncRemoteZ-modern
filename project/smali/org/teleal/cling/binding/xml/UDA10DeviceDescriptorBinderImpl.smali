.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;
.super Ljava/lang/Object;
.source "UDA10DeviceDescriptorBinderImpl.java"

# interfaces
.implements Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static parseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v1, "www."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 520
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal URI, trying with ./ prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 533
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "./"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 534
    :catch_1
    move-exception v0

    .line 535
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal URI \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', ignoring value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildDOM(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Lorg/w3c/dom/Document;
    .locals 6
    .param p1, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;
    .param p3, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Generating DOM from device model: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 357
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 359
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 360
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, p3, p1, v0, p2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateRoot(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-object v0

    .line 364
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not generate device descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public buildInstance(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/binding/staging/MutableDevice;)Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .param p2, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/teleal/cling/model/meta/Device;",
            ">(TD;",
            "Lorg/teleal/cling/binding/staging/MutableDevice;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "undescribedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {p2, p1}, Lorg/teleal/cling/binding/staging/MutableDevice;->build(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public describe(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .locals 7
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
    .line 67
    .local p1, "undescribedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 68
    :cond_0
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string v4, "Null or empty descriptor"

    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_1
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Populating device from XML descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 82
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 84
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 85
    new-instance v4, Lorg/xml/sax/InputSource;

    .line 87
    new-instance v5, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 84
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 91
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Device;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 93
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ex":Lorg/teleal/cling/model/ValidationException;
    throw v1

    .line 95
    .end local v1    # "ex":Lorg/teleal/cling/model/ValidationException;
    :catch_1
    move-exception v1

    .line 96
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

.method public describe(Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Device;
    .locals 6
    .param p2, "dom"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/teleal/cling/model/meta/Device;",
            ">(TD;",
            "Lorg/w3c/dom/Document;",
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
    .line 102
    .local p1, "undescribedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Populating device from DOM: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableDevice;-><init>()V

    .line 106
    .local v0, "descriptor":Lorg/teleal/cling/binding/staging/MutableDevice;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 107
    .local v2, "rootElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0, v2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateRoot(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Element;)V

    .line 110
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->buildInstance(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/binding/staging/MutableDevice;)Lorg/teleal/cling/model/meta/Device;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 112
    .end local v0    # "descriptor":Lorg/teleal/cling/binding/staging/MutableDevice;
    .end local v2    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ex":Lorg/teleal/cling/model/ValidationException;
    throw v1

    .line 114
    .end local v1    # "ex":Lorg/teleal/cling/model/ValidationException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse device DOM: "

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

.method public generate(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;
    .param p3, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generating XML descriptor from device model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->buildDOM(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not build DOM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected generateDevice(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    .locals 8
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .param p2, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p3, "descriptor"    # Lorg/w3c/dom/Document;
    .param p4, "rootElement"    # Lorg/w3c/dom/Element;
    .param p5, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;

    .prologue
    .line 393
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v0}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 395
    .local v4, "deviceElement":Lorg/w3c/dom/Element;
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v1

    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 396
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 398
    invoke-virtual {p2, p5}, Lorg/teleal/cling/model/meta/Device;->getDetails(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v6

    .line 400
    .local v6, "deviceModelDetails":Lorg/teleal/cling/model/meta/DeviceDetails;
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 401
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 403
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 406
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 409
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 410
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturerURI()Ljava/net/URI;

    move-result-object v1

    .line 408
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 413
    :cond_0
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 416
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelDescription()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 419
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 420
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 423
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 424
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 427
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 428
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelURI()Ljava/net/URI;

    move-result-object v1

    .line 426
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 432
    :cond_1
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 433
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 436
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 437
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getPresentationURI()Ljava/net/URI;

    move-result-object v1

    .line 435
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 440
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 441
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {p3, v4, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 444
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getDlnaDocs()[Lorg/teleal/cling/model/types/DLNADoc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getDlnaDocs()[Lorg/teleal/cling/model/types/DLNADoc;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_3

    .line 453
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dlna:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getDlnaCaps()Lorg/teleal/cling/model/types/DLNACaps;

    move-result-object v1

    const-string v2, "urn:schemas-dlna-org:device-1-0"

    .line 452
    invoke-static {p3, v4, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 457
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateIconList(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 458
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateServiceList(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 459
    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateDeviceList(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V

    .line 460
    return-void

    .line 445
    :cond_3
    aget-object v7, v1, v0

    .line 447
    .local v7, "dlnaDoc":Lorg/teleal/cling/model/types/DLNADoc;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "dlna:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    const-string v5, "urn:schemas-dlna-org:device-1-0"

    .line 446
    invoke-static {p3, v4, v3, v7, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected generateDeviceList(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    .locals 9
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .param p2, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p3, "descriptor"    # Lorg/w3c/dom/Document;
    .param p4, "deviceElement"    # Lorg/w3c/dom/Element;
    .param p5, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;

    .prologue
    .line 503
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    :cond_0
    return-void

    .line 505
    :cond_1
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v0}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 507
    .local v4, "deviceListElement":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v7, v6

    .local v2, "device":Lorg/teleal/cling/model/meta/Device;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    .line 508
    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateDevice(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V

    .line 507
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method protected generateIconList(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .param p2, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p3, "descriptor"    # Lorg/w3c/dom/Document;
    .param p4, "deviceElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 463
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->hasIcons()Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    :cond_0
    return-void

    .line 465
    :cond_1
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 467
    .local v2, "iconListElement":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 468
    .local v0, "icon":Lorg/teleal/cling/model/meta/Icon;
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, v2, v6}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 470
    .local v1, "iconElement":Lorg/w3c/dom/Element;
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Icon;->getMimeType()Lorg/teleal/common/util/MimeType;

    move-result-object v7

    invoke-static {p3, v1, v6, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 471
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Icon;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3, v1, v6, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 472
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Icon;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3, v1, v6, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 473
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Icon;->getDepth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3, v1, v6, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 474
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-static {p3, v1, v6, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected generateRoot(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    .locals 6
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .param p2, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p3, "descriptor"    # Lorg/w3c/dom/Document;
    .param p4, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;

    .prologue
    .line 371
    const-string v0, "urn:schemas-upnp-org:device-1-0"

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 372
    .local v4, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {p3, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 374
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateSpecVersion(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 382
    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->generateDevice(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V

    .line 383
    return-void
.end method

.method protected generateServiceList(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .param p2, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p3, "descriptor"    # Lorg/w3c/dom/Document;
    .param p4, "deviceElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 479
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->hasServices()Z

    move-result v5

    if-nez v5, :cond_1

    .line 500
    :cond_0
    return-void

    .line 481
    :cond_1
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 483
    .local v4, "serviceListElement":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5

    .line 484
    .local v2, "service":Lorg/teleal/cling/model/meta/Service;
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, v4, v8}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 486
    .local v3, "serviceElement":Lorg/w3c/dom/Element;
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 487
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 488
    instance-of v8, v2, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v8, :cond_3

    move-object v1, v2

    .line 489
    check-cast v1, Lorg/teleal/cling/model/meta/RemoteService;

    .line 490
    .local v1, "rs":Lorg/teleal/cling/model/meta/RemoteService;
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 491
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 492
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 483
    .end local v1    # "rs":Lorg/teleal/cling/model/meta/RemoteService;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 493
    :cond_3
    instance-of v8, v2, Lorg/teleal/cling/model/meta/LocalService;

    if-eqz v8, :cond_2

    move-object v0, v2

    .line 494
    check-cast v0, Lorg/teleal/cling/model/meta/LocalService;

    .line 495
    .local v0, "ls":Lorg/teleal/cling/model/meta/LocalService;
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/Namespace;->getControlPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 496
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/Namespace;->getEventSubscriptionPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 497
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/Namespace;->getDescriptorPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-static {p3, v3, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_1
.end method

.method protected generateSpecVersion(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .param p2, "deviceModel"    # Lorg/teleal/cling/model/meta/Device;
    .param p3, "descriptor"    # Lorg/w3c/dom/Document;
    .param p4, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 386
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p3, p4, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 387
    .local v0, "specVersionElement":Lorg/w3c/dom/Element;
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/UDAVersion;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 388
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/UDAVersion;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 389
    return-void
.end method

.method public hydrateDevice(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 8
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "deviceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 190
    .local v1, "deviceNodeChildren":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 239
    return-void

    .line 191
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 193
    .local v0, "deviceNodeChild":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 190
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_2
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 197
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    goto :goto_1

    .line 198
    :cond_3
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    goto :goto_1

    .line 200
    :cond_4
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 201
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    goto :goto_1

    .line 202
    :cond_5
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 203
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    goto :goto_1

    .line 204
    :cond_6
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 205
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    goto :goto_1

    .line 206
    :cond_7
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 207
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_8
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 209
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_9
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 211
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    goto/16 :goto_1

    .line 212
    :cond_a
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 213
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    goto/16 :goto_1

    .line 214
    :cond_b
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 215
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    goto/16 :goto_1

    .line 216
    :cond_c
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 217
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 218
    :cond_d
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 219
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/teleal/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->udn:Lorg/teleal/cling/model/types/UDN;

    goto/16 :goto_1

    .line 220
    :cond_e
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 221
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateIconList(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 222
    :cond_f
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 223
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateServiceList(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 224
    :cond_10
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 225
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateDeviceList(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 226
    :cond_11
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 227
    const-string v5, "dlna"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 228
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "txt":Ljava/lang/String;
    :try_start_0
    iget-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    invoke-static {v4}, Lorg/teleal/cling/model/types/DLNADoc;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNADoc;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    sget-object v5, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid X_DLNADOC value, ignoring value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    .end local v2    # "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    .end local v4    # "txt":Ljava/lang/String;
    :cond_12
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    const-string v5, "dlna"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/teleal/cling/model/types/DLNACaps;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNACaps;

    move-result-object v5

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

    goto/16 :goto_1
.end method

.method public hydrateDeviceList(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "deviceListNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 324
    .local v1, "deviceListNodeChildren":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 338
    return-void

    .line 325
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 327
    .local v0, "deviceListNodeChild":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 324
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    :cond_2
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v4, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    new-instance v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v2}, Lorg/teleal/cling/binding/staging/MutableDevice;-><init>()V

    .line 332
    .local v2, "embeddedDevice":Lorg/teleal/cling/binding/staging/MutableDevice;
    iput-object p1, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->parentDevice:Lorg/teleal/cling/binding/staging/MutableDevice;

    .line 333
    iget-object v4, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {p0, v2, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateDevice(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto :goto_1
.end method

.method public hydrateIconList(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "iconListNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 243
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 244
    .local v5, "iconListNodeChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 279
    return-void

    .line 245
    :cond_0
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 247
    .local v4, "iconListNodeChild":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_2

    .line 244
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 252
    new-instance v1, Lorg/teleal/cling/binding/staging/MutableIcon;

    invoke-direct {v1}, Lorg/teleal/cling/binding/staging/MutableIcon;-><init>()V

    .line 254
    .local v1, "icon":Lorg/teleal/cling/binding/staging/MutableIcon;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 256
    .local v3, "iconChildren":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 276
    iget-object v7, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_3
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 259
    .local v2, "iconChild":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_5

    .line 256
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 262
    :cond_5
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 263
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lorg/teleal/cling/binding/staging/MutableIcon;->width:I

    goto :goto_3

    .line 264
    :cond_6
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 265
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lorg/teleal/cling/binding/staging/MutableIcon;->height:I

    goto :goto_3

    .line 266
    :cond_7
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 267
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lorg/teleal/cling/binding/staging/MutableIcon;->depth:I

    goto :goto_3

    .line 268
    :cond_8
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 269
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableIcon;->uri:Ljava/net/URI;

    goto :goto_3

    .line 270
    :cond_9
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 271
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    goto :goto_3
.end method

.method protected hydrateRoot(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "rootElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const-string v6, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    :cond_0
    sget-object v5, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Wrong XML namespace declared on root element: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 129
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v6}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    new-instance v5, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Root element name is not <root>: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 135
    .local v4, "rootChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .line 137
    .local v0, "deviceNode":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 162
    if-nez v0, :cond_9

    .line 163
    new-instance v5, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string v6, "No <device> element in <root>"

    invoke-direct {v5, v6}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_3
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 140
    .local v3, "rootChild":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 137
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_4
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 144
    invoke-virtual {p0, p1, v3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateSpecVersion(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 145
    :cond_5
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->URLBase:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-static {v3}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->baseURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid URLBase: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    if-eqz v0, :cond_7

    .line 155
    new-instance v5, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string v6, "Found multiple <device> elements in <root>"

    invoke-direct {v5, v6}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_7
    move-object v0, v3

    .line 157
    goto :goto_1

    .line 158
    :cond_8
    sget-object v5, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring unknown element: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    .end local v3    # "rootChild":Lorg/w3c/dom/Node;
    :cond_9
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->hydrateDevice(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    .line 166
    return-void
.end method

.method public hydrateServiceList(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "serviceListNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 283
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 284
    .local v5, "serviceListNodeChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 319
    return-void

    .line 285
    :cond_0
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 287
    .local v4, "serviceListNodeChild":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_2

    .line 284
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_2
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 292
    new-instance v1, Lorg/teleal/cling/binding/staging/MutableService;

    invoke-direct {v1}, Lorg/teleal/cling/binding/staging/MutableService;-><init>()V

    .line 294
    .local v1, "service":Lorg/teleal/cling/binding/staging/MutableService;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 296
    .local v3, "serviceChildren":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 316
    iget-object v7, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :cond_3
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 299
    .local v2, "serviceChild":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_5

    .line 296
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 302
    :cond_5
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 303
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/model/types/ServiceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableService;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    goto :goto_3

    .line 304
    :cond_6
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 305
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/model/types/ServiceId;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableService;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    goto :goto_3

    .line 306
    :cond_7
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 307
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableService;->descriptorURI:Ljava/net/URI;

    goto :goto_3

    .line 308
    :cond_8
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 309
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableService;->controlURI:Ljava/net/URI;

    goto :goto_3

    .line 310
    :cond_9
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v7, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 311
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    iput-object v7, v1, Lorg/teleal/cling/binding/staging/MutableService;->eventSubscriptionURI:Ljava/net/URI;

    goto :goto_3
.end method

.method public hydrateSpecVersion(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "specVersionNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 171
    .local v2, "specVersionChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 185
    return-void

    .line 172
    :cond_0
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 174
    .local v1, "specVersionChild":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 171
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_2
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    iget-object v3, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-static {v1}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->major:I

    goto :goto_1

    .line 179
    :cond_3
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p1, Lorg/teleal/cling/binding/staging/MutableDevice;->udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-static {v1}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->minor:I

    goto :goto_1
.end method
