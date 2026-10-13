.class public abstract Lorg/teleal/cling/support/lastchange/LastChangeParser;
.super Lorg/teleal/common/xml/SAXParser;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;,
        Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;,
        Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/teleal/cling/support/lastchange/LastChangeParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/teleal/common/xml/SAXParser;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected buildDOM(Lorg/teleal/cling/support/lastchange/Event;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "event"    # Lorg/teleal/cling/support/lastchange/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 189
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 191
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 192
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->generateRoot(Lorg/teleal/cling/support/lastchange/Event;Lorg/w3c/dom/Document;)V

    .line 194
    return-object v0
.end method

.method protected createValue(Ljava/lang/String;[Ljava/util/Map$Entry;)Lorg/teleal/cling/support/lastchange/EventedValue;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/teleal/cling/support/lastchange/EventedValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->getEventedVariables()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 75
    .local v1, "evType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/lastchange/EventedValue;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [Ljava/util/Map$Entry;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/teleal/cling/support/lastchange/EventedValue;>;"
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/lastchange/EventedValue;

    goto :goto_0
.end method

.method public generate(Lorg/teleal/cling/support/lastchange/Event;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lorg/teleal/cling/support/lastchange/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->buildDOM(Lorg/teleal/cling/support/lastchange/Event;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->documentToFragmentString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateEventedValue(Lorg/teleal/cling/support/lastchange/EventedValue;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "eventedValue"    # Lorg/teleal/cling/support/lastchange/EventedValue;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "parentElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 216
    invoke-virtual {p1}, Lorg/teleal/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/teleal/cling/support/lastchange/EventedValue;->getAttributes()[Ljava/util/Map$Entry;

    move-result-object v1

    .line 218
    .local v1, "attributes":[Ljava/util/Map$Entry;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 219
    invoke-static {p2, p3, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 220
    .local v2, "evElement":Lorg/w3c/dom/Element;
    array-length v7, v1

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-lt v6, v7, :cond_1

    .line 224
    .end local v2    # "evElement":Lorg/w3c/dom/Element;
    :cond_0
    return-void

    .line 220
    .restart local v2    # "evElement":Lorg/w3c/dom/Element;
    :cond_1
    aget-object v0, v1, v6

    .line 221
    .local v0, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0
.end method

.method protected generateInstanceIDs(Lorg/teleal/cling/support/lastchange/Event;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "event"    # Lorg/teleal/cling/support/lastchange/Event;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 204
    invoke-virtual {p1}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    return-void

    .line 204
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 205
    .local v1, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 206
    sget-object v4, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v4}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 207
    .local v2, "instanceIDElement":Lorg/w3c/dom/Element;
    sget-object v4, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v4}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/EventedValue;

    .line 210
    .local v0, "eventedValue":Lorg/teleal/cling/support/lastchange/EventedValue;
    invoke-virtual {p0, v0, p2, v2}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->generateEventedValue(Lorg/teleal/cling/support/lastchange/EventedValue;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected generateRoot(Lorg/teleal/cling/support/lastchange/Event;Lorg/w3c/dom/Document;)V
    .locals 3
    .param p1, "event"    # Lorg/teleal/cling/support/lastchange/Event;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 199
    .local v0, "eventElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 200
    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->generateInstanceIDs(Lorg/teleal/cling/support/lastchange/Event;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 201
    return-void
.end method

.method protected getEventedVariables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected abstract getNamespace()Ljava/lang/String;
.end method

.method public parse(Ljava/lang/String;)Lorg/teleal/cling/support/lastchange/Event;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 103
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Null or empty XML"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_1
    new-instance v0, Lorg/teleal/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/teleal/cling/support/lastchange/Event;-><init>()V

    .line 107
    .local v0, "event":Lorg/teleal/cling/support/lastchange/Event;
    new-instance v3, Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;

    invoke-direct {v3, p0, v0, p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/Event;Lorg/teleal/common/xml/SAXParser;)V

    .line 109
    sget-object v3, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v4, "Parsing \'LastChange\' event XML content"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 112
    sget-object v3, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parsed event with instances IDs: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    sget-object v3, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 122
    :cond_3
    return-object v0

    .line 114
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 115
    .local v2, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    sget-object v4, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InstanceID \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' has values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/lastchange/EventedValue;

    .line 117
    .local v1, "eventedValue":Lorg/teleal/cling/support/lastchange/EventedValue;
    sget-object v5, Lorg/teleal/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseResource(Ljava/lang/String;)Lorg/teleal/cling/support/lastchange/Event;
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lorg/teleal/common/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/teleal/cling/support/lastchange/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    :cond_0
    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_1
    throw v1
.end method
