.class public Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;
.super Ljava/lang/Object;
.source "GENAEventProcessorImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/GENAEventProcessor;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/teleal/cling/transport/spi/GENAEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 193
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readBody(Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 8
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reading body of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "===================================== GENA BODY BEGIN ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 80
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 81
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "-===================================== GENA BODY END ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v4

    sget-object v5, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v4, v5}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    :cond_1
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform null or non-string body of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 91
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 94
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 95
    new-instance v5, Lorg/xml/sax/InputSource;

    .line 96
    new-instance v6, Ljava/io/StringReader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 94
    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 100
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->readPropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 102
    .local v3, "propertysetElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v3, p1}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->readProperties(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 104
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "propertysetElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform message payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected readProperties(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 13
    .param p1, "propertysetElement"    # Lorg/w3c/dom/Element;
    .param p2, "message"    # Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

    .prologue
    .line 143
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 145
    .local v5, "propertysetElementChildren":Lorg/w3c/dom/NodeList;
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getService()Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v10

    invoke-virtual {v10}, Lorg/teleal/cling/model/meta/RemoteService;->getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v8

    .line 147
    .local v8, "stateVariables":[Lorg/teleal/cling/model/meta/StateVariable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v0, v10, :cond_0

    .line 178
    return-void

    .line 148
    :cond_0
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 150
    .local v4, "propertysetChild":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0, v4}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "property"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 155
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 157
    .local v3, "propertyChildren":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 158
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 160
    .local v2, "propertyChild":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 157
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p0, v2}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "stateVariableName":Ljava/lang/String;
    array-length v11, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_3

    aget-object v6, v8, v10

    .line 165
    .local v6, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 166
    sget-object v10, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Reading state variable value: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 167
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v10

    .line 169
    new-instance v11, Lorg/teleal/cling/model/state/StateVariableValue;

    invoke-direct {v11, v6, v9}, Lorg/teleal/cling/model/state/StateVariableValue;-><init>(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    .line 168
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method protected readPropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "d"    # Lorg/w3c/dom/Document;

    .prologue
    .line 120
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 121
    .local v0, "propertysetElement":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "propertyset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Root element was not \'propertyset\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    return-object v0
.end method

.method protected toString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1}, Lorg/teleal/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "output":Ljava/lang/String;
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    return-object v0

    .line 186
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeBody(Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;)V
    .locals 7
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing body of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 56
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 57
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 58
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->writePropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 60
    .local v3, "propertysetElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0, v3, p1}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->writeProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;)V

    .line 62
    sget-object v4, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 64
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "===================================== GENA BODY BEGIN ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 66
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 67
    sget-object v4, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "-===================================== GENA BODY END ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    return-void

    .line 70
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "propertysetElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform message payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected writeProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;)V
    .locals 5
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "propertysetElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    .prologue
    .line 130
    invoke-virtual {p3}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getStateVariableValues()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    return-void

    .line 130
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/state/StateVariableValue;

    .line 131
    .local v1, "stateVariableValue":Lorg/teleal/cling/model/state/StateVariableValue;
    const-string v3, "urn:schemas-upnp-org:event-1-0"

    const-string v4, "e:property"

    invoke-interface {p1, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 132
    .local v0, "propertyElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    invoke-virtual {v1}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v1}, Lorg/teleal/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {p1, v0, v3, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_0
.end method

.method protected writePropertysetElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "d"    # Lorg/w3c/dom/Document;

    .prologue
    .line 113
    const-string v1, "urn:schemas-upnp-org:event-1-0"

    const-string v2, "e:propertyset"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 114
    .local v0, "propertysetElement":Lorg/w3c/dom/Element;
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 115
    return-object v0
.end method
